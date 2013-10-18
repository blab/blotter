# Author: Trevor Bedford
# Forked from https://github.com/cboettig/labnotebook/blob/master/_plugins/jekyll-labnotebook-plugins/octokit.rb
# Author: Carl Boettiger
# License: MIT

# Examples:
#  {% octokit_commits trvrb/coaltrace %}

require 'octokit'

## Commit gets issues on the day given.  

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
			out = "<ul>"
			for i in 0 ... [commits.size, 8].min
				out = out + "<li>" +
				commits[i].commit.message + " " + 
				"<a href=\"" +
				commits[i].rels[:html].href +
				"\">" + 
				DateTime.parse(commits[i].commit.author.date).to_time.strftime("%I:%M %P %d %b %Y") +
				"</a>" +
				"</li>"
			end
			out = out + "</ul>"
			out
		end
	end
end

## Use context-specific github flavored markdown to convert sha into link.  e.g.
## Octokit.markdown("Hello world github/linguist#1 **cool**, and #1!", :mode => "gfm", :context => "github/gollum")
#

Liquid::Template.register_tag('octokit_commits', Jekyll::OctokitCommits)
