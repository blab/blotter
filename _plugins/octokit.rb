# Author: Trevor Bedford
# Forked from https://github.com/cboettig/labnotebook/blob/master/_plugins/jekyll-labnotebook-plugins/octokit.rb
# Author: Carl Boettiger
# License: MIT

# Examples:
#  {% octokit_commits trvrb/coaltrace %}
#  {% octokit_contributors trvrb/coaltrace %}

require 'octokit'

# Get commits
module Jekyll
	class OctokitCommits < Liquid::Tag
		def initialize(tag_name, markup, tokens)
			super
			@markup = "#{markup}".strip
		end
		def render(context)
			puts "Getting Github Commits via octokit.rb"
			client = Octokit::Client.new(:netrc => true, :access_token => ENV['GITHUB_TOKEN'])
			@repo = Liquid::Template.parse(@markup).render context
			puts @repo
			commits = client.commits(@repo)
			out = "<ul class=\"list-unstyled\">"
			for i in 0 ... [commits.size, 5].min
				href = commits[i].rels[:html].href
				date = DateTime.parse(commits[i].commit.author.date).to_time.strftime("%d %b %Y")
				message = commits[i].commit.message
				out = out + "<div class=\"smallspacer\"></div>" +
				"<li> <a class=\"off\" href=\"#{href}\">" +
				"#{date} - " + 
				"<span class=\"text-gray\">#{message}</span>" +
				"</a> </li>"
			end
			out = out + "</ul>"
			out
		end
	end
end

Liquid::Template.register_tag('octokit_commits', Jekyll::OctokitCommits)

# Get contributors
module Jekyll
	class OctokitContributors < Liquid::Tag
		def initialize(tag_name, markup, tokens)
			super
			@markup = "#{markup}".strip
		end
		def render(context)
			puts "Getting Github Contributors via octokit.rb"
			client = Octokit::Client.new(:netrc => true, :access_token => ENV['GITHUB_TOKEN'])
			@repo = Liquid::Template.parse(@markup).render context
			puts @repo
			contributors = client.contributors(@repo)
			out = ""
			for i in 0 ... [contributors.size, 5].min
				href = contributors[i].rels[:html].href
				login = contributors[i].login
				avatar = contributors[i].rels[:avatar].href
				out = out + "<div class=\"smallspacer\"></div>" +
				"<div>" +
				"<a class=\"off\" href=\"#{href}\">" +
    			"<img class=\"pull-left\" width=30 src=\"#{avatar}\">" +
    			"<div class=\"handlebox\">" +
    			"#{login}" +
    			"</div>" +
 				"</a>" +
 				"</div>"
			end
			out
		end
	end
end

Liquid::Template.register_tag('octokit_contributors', Jekyll::OctokitContributors)