# Preprocessing script
# Run before `jekyll build` to walk through directories and add YAML front matter to Markdown files
# and to rename readme.md files to index.md

# collect all markdown files 
mdarray = Dir.glob("projects/**/*.md")

# go through each markdown file
mdarray.each { |md|
	
	# if readme.md, check to see if a matching index.html exists
	# if it doesn't exist, rename to index.md
	if File.basename(md) =~ /readme/i
		if !File.exists?(File.dirname(md) + "/index.html")
			indexmd = File.dirname(md) + "/index.md"
			File.rename(md, indexmd)
			md = indexmd
		end
	end
	
	# get project name if possible
	project_name = nil
	dirarray = File.dirname(md).split('/')
	temp_name = dirarray[dirarray.index("projects") + 1]
	if temp_name =~ /^[^_]/
		project_name = temp_name
	end

	# if file is lacking YAML front matter, add some
	contents = File.open(md, "r").read	
	out = File.new(md, "w")	
	if contents !~ /^(---\s*\n.*?\n?)^(---\s*$\n?)/m
		out.puts "---"
		out.puts "layout: project"
		if project_name != nil
			title = md.sub(/^projects\//, '').sub(/.md$/, '').sub(/index$/, '')
			out.puts "title: #{title}"
			out.puts "project: #{project_name}"
		end
		out.puts "---"
		out.puts	
	end
	
	# go through file and replace all links that point to .md files with the equivalent .html file
	contents.gsub!(/\((\S+)\.md\)/, "(\\1.html)")
	out.puts contents
	
}
