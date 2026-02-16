# Walk through config: readmes and grab associated README.md for each entry
# Write this readme out to projects/ directory
# Delete index.md if it already exists

require 'yaml'
require 'down'
require 'fileutils'

module Readmes

	def self.generate_readmes(config_file)

		project_data = {}

		config = YAML.load_file(config_file)
		projects_array = config["readmes"]

		puts "Downloading readmes"

		if projects_array.length > 0
			projects_array.each do |repo|

				puts "\t#{repo}"

				begin
					githubfile = Down.download(
        		"https://raw.githubusercontent.com/#{repo}/master/README.md",
          	max_redirects: 5
        	)
				rescue Down::Error
					puts "\t\tFile not found"
				else
					name = repo.split('/').drop(1).join('')
					FileUtils.mkdir_p("projects/#{name}/")
					dir = "projects/#{name}/"
					FileUtils.mv(githubfile.path, dir+"README.md")

					File.delete(dir+"index.md") if File.exist?(dir+"index.md")

					# find image links within readme
					if File.exist?(dir+"README.md")
						contents = File.open(dir+"README.md", "r").read
						matchesHTML = contents.scan /<img.+src=\"([^"]+)\"/
						matchesMD = contents.scan /\!\[[^\]]*\]\(([^)]+)\)/
						matches = matchesHTML + matchesMD
						matches.each do |match|
							imagePath = match[0]
							puts "\t\t#{imagePath}"
							imageUrl = "https://raw.githubusercontent.com/#{repo}/master/#{imagePath}"
							begin
								imageFile = Down.download(imageUrl, max_redirects: 5)
							rescue Down::Error
								puts "\t\tFile not found"
							else
								FileUtils.mkdir_p(File.dirname(dir+imagePath))
								FileUtils.mv(imageFile.path, dir+imagePath)
							end
						end
					end
				end

			end
		end

	end

end

Readmes.generate_readmes("_config.yml")
