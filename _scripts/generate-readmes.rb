# Fetch each repo listed under config: readmes, rewrite the README's
# relative links to point at GitHub, download referenced images, and
# write a Jekyll-ready projects/<name>/index.md in a single pass.

require 'yaml'
require 'down'
require 'fileutils'

module Readmes

	FILETYPES = [
		'pdf', 'class', 'cpp', 'h', 'hh', 'ipynb', 'jar', 'java', 'nb', 'py',
		'R', 'rb', 'Rmd', 'branches', 'csv', 'fasta', 'json', 'kml', 'log',
		'mcc', 'newick', 'nex', 'tsv', 'tips', 'trees', 'timeseries', 'summary',
		'txt', 'xml', 'png', 'jpg', 'jpeg', 'gif', 'svg', 'webp', 'bmp', 'tiff',
		'yml', 'yaml', 'toml', 'sh', 'bash', 'md5', 'sha256', 'bib', 'tex',
		'zip', 'tar', 'gz', 'tgz', 'mp4', 'mov'
	]

	def self.generate_readmes(config_file)
		config = YAML.load_file(config_file)
		projects_array = config["readmes"] || []

		puts "Downloading readmes"
		projects_array.each do |repo|
			puts "\t#{repo}"
			generate_one(repo)
		end
	end

	def self.generate_one(repo)
		markdown, branch = fetch_readme(repo)
		return unless markdown

		name = repo.split('/').last
		dir = "projects/#{name}/"
		FileUtils.mkdir_p(dir)

		rewritten = rewrite_links(markdown, repo, branch)
		download_images(markdown, repo, branch, dir)
		write_page(dir, name, repo, rewritten)
	end

	def self.fetch_readme(repo)
		['main', 'master'].each do |b|
			begin
				file = Down.download(
					"https://raw.githubusercontent.com/#{repo}/#{b}/README.md",
					max_redirects: 5
				)
				content = File.read(file.path)
				File.delete(file.path)
				return [content, b]
			rescue Down::Error
				next
			end
		end
		puts "\t\tREADME not found"
		[nil, nil]
	end

	def self.rewrite_links(markdown, repo, branch)
		out = markdown.dup

		# .md links -> GitHub blob/<branch>/ (these point to files that aren't downloaded locally)
		out.gsub!(/\((?!http)(\S+)\.md\)/, "(https://github.com/#{repo}/blob/#{branch}/\\1.md)")

		# known source/data filetypes -> GitHub tree/<branch>/
		FILETYPES.each do |ft|
			out.gsub!(/\((?!http)(\S+)\.#{ft}\)/, "(https://github.com/#{repo}/tree/#{branch}/\\1.#{ft})")
		end

		# trailing-slash directory references -> GitHub tree/<branch>/
		out.gsub!(/\((?!http)(\S+\/)\)/, "(https://github.com/#{repo}/tree/#{branch}/\\1)")

		# extensionless relative paths (e.g. ./ingest, LICENSE, HIV/bayesian_timetree)
		# anchored to ](...) so we don't eat parenthetical prose like "(see also)"
		out.gsub!(/\]\(([^\s)]+)\)/) do |match|
			target = $1
			if target =~ /\A(?:https?:|mailto:|tel:|javascript:|ftp:|#|\/)/
				match
			elsif target.end_with?('/')
				match
			elsif target.sub(/\A\.{1,2}\//, '').include?('.')
				# "." outside a leading ./ or ../ indicates an extension or a
				# domain-like author bug (e.g. www.nextstrain.org/dengue);
				# leave untouched.
				match
			else
				"](https://github.com/#{repo}/tree/#{branch}/#{target})"
			end
		end

		out
	end

	def self.download_images(markdown, repo, branch, dir)
		matches_html = markdown.scan(/<img.+src=\"([^"]+)\"/)
		matches_md = markdown.scan(/\!\[[^\]]*\]\(([^)]+)\)/)
		(matches_html + matches_md).each do |match|
			image_path = match[0]
			next if image_path.start_with?('http')

			puts "\t\t#{image_path}"
			url = "https://raw.githubusercontent.com/#{repo}/#{branch}/#{image_path}"
			begin
				file = Down.download(url, max_redirects: 5)
			rescue Down::Error
				puts "\t\tFile not found"
			else
				target = File.join(dir, image_path)
				FileUtils.mkdir_p(File.dirname(target))
				FileUtils.mv(file.path, target)
			end
		end
	end

	def self.write_page(dir, name, repo, contents)
		frontmatter = <<~FRONTMATTER
			---
			layout: project
			title: #{name}/
			project: #{name}
			repo: #{repo}
			permalink: /:path/:basename:output_ext
			---

		FRONTMATTER
		File.write(dir + "index.md", frontmatter + contents)

		# clean up legacy artifacts from previous builds
		File.delete(dir + "README.md") if File.exist?(dir + "README.md")
	end

end

Readmes.generate_readmes("_config.yml")
