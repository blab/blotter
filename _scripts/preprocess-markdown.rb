# Preprocessing script
# Run before `jekyll build` to walk through directories and add YAML front matter to Markdown files
# and to rename readme.md files to index.md

# collect mapping of project name to repo via _config.yml
name_to_repo = Hash.new
require 'yaml'
$basedir = Dir.pwd				
config = YAML.load_file("_config.yml")
config["projects"].each do |repo|
	name = repo.split('/').drop(1).join('')	
	name_to_repo[name] = repo
end

# collect all markdown files 
mdarray = Dir.glob("projects/**/*.md")

# go through each markdown file
mdarray.each { |md|

	basename = File.basename(md)
	full_directory = File.dirname(md) + "/"
	
	# if readme.md, rename to index.md
	# if index.html already exists, remove
	if basename =~ /readme/i
		if File.exists?(full_directory + "index.html")
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
	if contents !~ /^(---\s*\n.*?\n?)^(---\s*$\n?)/m
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

	# go through file and replace all links that point to .md files with the equivalent .html file
	contents.gsub!(/\((\S+)\.md\)/, "(\\1.html)")

	# go through file and replace all links that point to source code files with equivalent GitHub links
	filetypes = ['class', 'cpp', 'h', 'hh', 'ipynb', 'jar', 'java', 'nb', 'py', 'R', 'rb', 'Rmd', 'branches', 'csv', 'fasta', 'json', 'kml', 'log', 'mcc', 'newick', 'nex', 'tsv', 'tips', 'trees', 'txt', 'xml']
	filetypes.each {|filetype|
		contents.gsub!(/\((\S+)\.#{filetype}\)/, "(https://github.com/#{repo}/tree/master/#{within_project_directory}\\1.#{filetype})")
	}

	out.puts contents

}
