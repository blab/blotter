# Preprocessing script for `projects:` (full-clone) projects only.
# Renames README.md -> index.md, adds YAML front matter to .md files
# that lack it, and rewrites links to local pages (.md -> .html) and
# to source files (.py, .ipynb, ...) -> GitHub.
#
# Readme-only projects (config: readmes:) are handled end-to-end by
# generate-readmes.rb and are NOT touched here.

require 'yaml'
$basedir = Dir.pwd

config = YAML.load_file("_config.yml")

# map project name -> repo for the full-clone set only
name_to_repo = Hash.new
project_names = []
(config["projects"] || []).each do |repo|
	name = repo.split('/').drop(1).join('')
	name_to_repo[name] = repo
	project_names << name
end

# collect markdown files only under full-clone project directories
mdarray = project_names.flat_map { |n| Dir.glob("projects/#{n}/**/*.md") }

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

	# rewrite .md links to .html (these point to local Jekyll-rendered pages)
	contents.gsub!(/\((?!http)(\S+)\.md\)/, "(\\1.html)")

	# rewrite source-file links to GitHub. `projects:` repos are master-only today;
	# revisit if any switches to main.
	filetypes = ['pdf', 'class', 'cpp', 'h', 'hh', 'ipynb', 'jar', 'java', 'nb', 'py', 'R', 'rb', 'Rmd', 'branches', 'csv', 'fasta', 'json', 'kml', 'log', 'mcc', 'newick', 'nex', 'tsv', 'tips', 'trees', 'timeseries', 'summary', 'txt', 'xml']
	filetypes.each {|filetype|
		contents.gsub!(/\((?!http)(\S+)\.#{filetype}\)/, "(https://github.com/#{repo}/tree/master/#{within_project_directory}\\1.#{filetype})")
	}

	out.puts contents

}
