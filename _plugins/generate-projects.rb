# Author: Trevor Bedford
# License: MIT
# Use repo listing from _config.yml combined with octokit.rb to construct
# projects posts containing Git/GitHub metadata

module Jekyll

	class ProjectPost < Post
	
		def initialize(site, source, dir, name)
			@site = site
			@dir = dir
			@base = self.containing_dir(source, dir)
			@name = name
			
			self.categories = dir.downcase.split('/').reject { |x| x.empty? }
			self.process(name)
			self.read_yaml(@base, name)
			
			if self.data.has_key?('date')
			self.date = Time.parse(self.data["date"].to_s)
			end
			
			self.published = self.published?
			
			self.populate_categories
			self.populate_tags
		end	
		
	end
	
	class ProjectPostGenerator < Generator
		safe true
		
		def generate(site)
		
			if site.config.key? 'projects'
				site.config['projects'].each do |project|
					owner = project.split('/').first
					name = project.split('/').drop(1).join('')
					category = 'projects'
					puts "owner: #{owner}"
					puts "name: #{name}"
					puts "site.dest: #{site.dest}"
#					newpost = ProjectPost.new(site, site.source, site.dest, name)
#					site.posts << newpost
				end
			end
		
		end
	end

end
