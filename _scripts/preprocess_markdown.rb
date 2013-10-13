# Preprocessing script
# Run before `jekyll build` to walk through directories and add YAML front matter to Markdown files
# and to rename readme.md files to index.md

# collect all markdown files 
mdarray = Dir.glob("**/*.md")
# mdarray = Dir.glob("[^_]**/**/*.md")	# in directories not descending from directories beginning with "_" 

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

	# if file is lacking YAML front matter, add some
	contents = File.open(md, "r").read	
	if contents !~ /^(---\s*\n.*?\n?)^(---\s*$\n?)/m
		out = File.new(md, "w")
		out.puts "---"
		out.puts "layout: project"
		out.puts "---"
		out.puts
		out.puts contents	
	end
	
}