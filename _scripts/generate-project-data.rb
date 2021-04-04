# Preprocessing script
# Run before `jekyll build` to go through _config.yml and use octokit to fill out metadata
#
# Example:
#  - repo: trvrb/coaltrace
#  - owner: trvrb
#  - title: coaltrace
#  - description: Simulating genealogies using charged particles
#  - url: /projects/coaltrace/
#  - date: 2013-10-19 04:12:17 UTC
#  - contributors:
#      - login: trvrb
#      - avatar: https://2.gravatar.com/avatar/ab7fe2db559c7924316c4391ba00b3f0
#      - url: https://github.com/trvrb
#  - commits:
#      - date: 2013-10-19T04:12:06Z
#      - message: Update readme.
#      - url: https://github.com/trvrb/coaltrace/commit/ebb95806f989d8fd6ecbf6aa8308647298dd21ad

require 'octokit'
require 'yaml'

module Projects

	def self.generate_data(config_file)

		project_data = {}

		config = YAML.load_file(config_file)
		projects_array = config["projects"]

		puts "Generating projects"
		# create octokit client
		client = Octokit::Client.new(:netrc => true, :access_token => ENV['GITHUB_TOKEN'])

		project_data = Array.new
		if projects_array.length > 0
			projects_array.each do |repo|

				puts "\tGenerating #{repo}"

				# load repo metadata
				octokit_repo = client.repository(repo)
				project_title = octokit_repo.name
				project_owner = octokit_repo.owner.login
				project_description = octokit_repo.description
				project_url = "/projects/#{project_title}/"
				project_date = octokit_repo.updated_at

				# load contributor metadata
				octokit_contributors = client.contributors(repo)
				project_contributors = Array.new
				for i in 0 ... [octokit_contributors.size, 10].min
					contributor = octokit_contributors[i]
					contributor_login = contributor.login
					contributor_avatar = contributor.rels[:avatar].href + "&s=50"
					contributor_url = contributor.rels[:html].href
					project_contributors = project_contributors.push(
						"login" => contributor_login,
						"avatar" => contributor_avatar,
						"url" => contributor_url
					)
				end

				# load commit metadata
				octokit_commits = client.commits(repo)
				project_commits = Array.new
				counter = 0
				for i in 0 ... octokit_commits.size
					commit = octokit_commits[i]
					commit_date = commit.commit.author.date
					commit_message = commit.commit.message
					commit_url = commit.rels[:html].href

					if commit.author != nil
						commit_author_login = commit.author.login
						if commit.author.rels[:html] != nil
							commit_author_url = commit.author.rels[:html].href
						else
							commit_author_url = ""
						end
					else
						commit_author_login = ""
						commit_author_url = ""
					end

					project_commits = project_commits.push(
						"date" => commit_date,
						"message" => commit_message,
						"url" => commit_url,
						"author_login" => commit_author_login,
						"author_url" => commit_author_url
					)
					counter += 1
					if counter == 5
						break
					end

				end

				# assemble metadata
				project_data = project_data.push(
					"repo" => repo,
					"title" => project_title,
					"owner" => project_owner,
					"description" => project_description,
					"url" => project_url,
					"contributors" => project_contributors,
					"commits" => project_commits
				)

				# sort by date
				project_data.sort! { |x, y| y["commits"].first["date"] <=> x["commits"].first["date"] }

			end
		end

		return project_data

	end

	def self.write_data(project_data, data_file)

		puts "Writing project data"
		File.write(data_file, project_data.to_yaml)

	end

end

project_data = Projects.generate_data("_config.yml")
Projects.write_data(project_data, "_data/projects.yml")
