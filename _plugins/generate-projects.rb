# Author: Trevor Bedford
# License: MIT
# Take repo listing from _config.yml and use octokit to fill out metadata
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

module Jekyll
	
	class ProjectGenerator < Generator
		safe true
		
		def generate(site)
		
			puts "Generating projects"
			# create octokit client
			client = Octokit::Client.new(:netrc => true, :access_token => ENV['GITHUB_TOKEN'])			
		
			array = Array.new
			if site.config.key? 'projects'
				site.config['projects'].each do |repo|
				
					puts "Generating #{repo}"
					
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
					for i in 0 ... [octokit_contributors.size, 5].min
						contributor_login = octokit_contributors[i].login
						contributor_avatar = octokit_contributors[i].rels[:avatar].href						
						contributor_url = octokit_contributors[i].rels[:html].href
						project_contributors = project_contributors.push(
							"login" => contributor_login,
							"avatar" => contributor_avatar,
							"url" => contributor_url
						)
					end
					
					# load commit metadata
					octokit_commits = client.commits(repo)
					project_commits = Array.new		
					for i in 0 ... [octokit_commits.size, 5].min
						commit_date = octokit_commits[i].commit.author.date
						commit_message = octokit_commits[i].commit.message
						commit_url = octokit_commits[i].rels[:html].href
						commit_author_login = octokit_commits[i].author.login
						commit_author_url = octokit_commits[i].author.rels[:html].href				
						project_commits = project_commits.push(
							"date" => commit_date,
							"message" => commit_message,
							"url" => commit_url,
							"author_login" => commit_author_login,							
							"author_url" => commit_author_url					
						)
						
					end
					
					# assemble metadata
					array = array.push(
						"repo" => repo,
						"title" => project_title,						
						"owner" => project_owner,
						"description" => project_description,
						"url" => project_url,
						"contributors" => project_contributors,
						"commits" => project_commits
					)
					
					# sort by date
					array.sort! { |x, y| y["commits"].first["date"] <=> x["commits"].first["date"] } 
					
				end
			end
			site.config.merge!("projects" => array) 
			
		#	puts site.config.inspect
					
		end
	end

end
