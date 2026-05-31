# Preprocessing script
# Run before `jekyll build` to walk through directories and add YAML front matter to Markdown files
# and to rename readme.md files to index.md

require 'yaml'
$basedir = Dir.pwd

# collect mapping of project name to repo via _config.yml
name_to_repo = Hash.new
config = YAML.load_file("_config.yml")
(config["projects"] + config["readmes"]).each do |repo|
	name = repo.split('/').drop(1).join('')
	name_to_repo[name] = repo
end

# mark projects that are only readmes
name_to_readme = Hash.new
config = YAML.load_file("_config.yml")
config["readmes"].each do |repo|
	name = repo.split('/').drop(1).join('')
	name_to_readme[name] = true
end

# load per-repo default branch resolved by generate-readmes.rb
branches = File.exist?("_data/readme_branches.yml") ? YAML.load_file("_data/readme_branches.yml") : {}

# collect all markdown files
mdarray = Dir.glob("projects/**/*.md")

# go through each markdown file
mdarray.each { |md|

	basename = File.basename(md)
	full_directory = File.dirname(md) + "/"

	# if readme.md, rename to index.md
	# if index.html already exists, remove
	if basename =~ /readme/i
		if File.exist?(full_directory + "index.html")
			File.delete(full_directory + "index.html")
		end
		indexmd = full_directory + "index.md"
		File.rename(md, indexmd)
		md = indexmd
	end

	# get project name if possible
	project_name = nil
	dirarray = full_directory.split('/')
	temp_name = dirarray[dirarray.index("projects") + 1]
	if temp_name =~ /^[^_]/
		project_name = temp_name
	end

	repo = name_to_repo[project_name]
	branch = branches[repo] || "master"
	within_project_directory = full_directory[/projects\/#{project_name}\/(.*)/, 1]

	# if file is lacking YAML front matter, add some
	contents = File.open(md, "r").read
	out = File.new(md, "w")
	# \A matches the beginning of string
	if contents !~ /\A(---\s*\n.*?\n?)^(---\s*$\n?)/m
		out.puts "---"
		out.puts "layout: project"
		if project_name != nil
			title = md.sub(/^.*projects\//, '').sub(/.md$/, '').sub(/index$/, '')
			out.puts "title: #{title}"
			out.puts "project: #{project_name}"
			out.puts "repo: #{repo}"
			out.puts "permalink: /:path/:basename:output_ext"
		end
		out.puts "---"
		out.puts
	end

	# rewrite .md links: for readme-only repos, point at GitHub (the
	# .html targets don't exist locally); for full project clones, swap
	# to the .html that jekyll will produce
	if name_to_readme[project_name]
		contents.gsub!(/\((?!http)(\S+)\.md\)/, "(https://github.com/#{repo}/blob/#{branch}/#{within_project_directory}\\1.md)")
	else
		contents.gsub!(/\((?!http)(\S+)\.md\)/, "(\\1.html)")
	end

	# go through file and replace all links that point to source code files with equivalent GitHub links
	filetypes = ['pdf', 'class', 'cpp', 'h', 'hh', 'ipynb', 'jar', 'java', 'nb', 'py', 'R', 'rb', 'Rmd', 'branches', 'csv', 'fasta', 'json', 'kml', 'log', 'mcc', 'newick', 'nex', 'tsv', 'tips', 'trees', 'timeseries', 'summary', 'txt', 'xml', 'png', 'jpg', 'jpeg', 'gif', 'svg', 'webp', 'bmp', 'tiff', 'yml', 'yaml', 'toml', 'sh', 'bash', 'md5', 'sha256', 'bib', 'tex', 'zip', 'tar', 'gz', 'tgz', 'mp4', 'mov']
	filetypes.each {|filetype|
		contents.gsub!(/\((?!http)(\S+)\.#{filetype}\)/, "(https://github.com/#{repo}/tree/#{branch}/#{within_project_directory}\\1.#{filetype})")
	}

	# if readme, replace all internal links with GitHub links
	if name_to_readme[project_name]
		# catching links that end in "/"
		contents.gsub!(/\((?!http)(\S+\/)\)/, "(https://github.com/#{repo}/tree/#{branch}/#{within_project_directory}\\1)")
		# catching remaining relative-path link targets with no extension and no trailing slash
		# (e.g. [doc](./ingest), [doc](HIV/bayesian_timetree), [doc](LICENSE)).
		# Anchored to ](...) to avoid mangling parenthetical prose like "(see also)".
		contents.gsub!(/\]\(([^\s)]+)\)/) do |match|
			target = $1
			if target =~ /\A(?:https?:|mailto:|tel:|javascript:|ftp:|#|\/)/
				match
			elsif target.end_with?('/')
				match
			elsif target.sub(/\A\.{1,2}\//, '').include?('.')
				# any remaining "." after stripping leading ./ or ../ indicates
				# either a file extension or a domain-like author error (e.g.
				# www.nextstrain.org/dengue); leave untouched
				match
			else
				"](https://github.com/#{repo}/tree/#{branch}/#{within_project_directory}#{target})"
			end
		end
	end

	out.puts contents

}
