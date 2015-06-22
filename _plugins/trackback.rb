# Author: Trevor Bedford
# License: MIT

# Examples:
#  {% trackback url %}
#  {% trackback {{page.url}} %}

require 'json'
require 'open-uri'

module Jekyll
	class Trackback < Liquid::Tag
		def initialize(tag_name, markup, tokens)
			super
			@markup = "#{markup}".strip
		end
		def render(context)
		
			url = Liquid::Template.parse(@markup).render context
			if url =~ /^\//
				url = "http://bedford.io" + url
			end
			json_object = JSON.parse(open("http://urls.api.twitter.com/1/urls/count.json?url=#{url}").read)
			count = json_object["count"]
			topsy_url = url.gsub(/:/, '%3A').gsub(/\//, '%2F')
			
			html = ""
			if count > 0
				html += "<span class=\"smallnote\">"
				html += "<i class=\"fa fa-retweet\"></i> "
				html += "<a class=\"off\" href=\"http://topsy.com/trackback?url=#{topsy_url}\">"
				html += "#{count}"
				html += "</a>"
				html += "</span>"
			end
			
			html
			
		end
	end
end

Liquid::Template.register_tag('trackback', Jekyll::Trackback)