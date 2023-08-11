# Walk through config: readmes and grab associated README.md for each entry
# Write this readme out to projects/ directory

require 'yaml'
require 'down'
require 'fileutils'

module Readmes

	def self.generate_readmes(config_file)

		project_data = {}

		config = YAML.load_file(config_file)
		projects_array = config["readmes"]

		puts "Generating readmes"

		if projects_array.length > 0
			projects_array.each do |repo|

				puts "\tGenerating #{repo}"

				githubfile = Down.download(
        	"https://raw.githubusercontent.com/#{repo}/master/README.md",
          max_redirects: 5
        )
				name = repo.split('/').drop(1).join('')
				FileUtils.mkdir_p("projects/#{name}/")
				FileUtils.mv(githubfile.path, "projects/#{name}/README.md")

			end
		end

	end

end

Readmes.generate_readmes("_config.yml")
