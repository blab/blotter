# Author: Trevor Bedford
# License: MIT

# Examples:
#  {% tweet url description %}
#  {% tweet {{page.url}} {{page.title}} %}


module Jekyll
	class Tweet < Liquid::Tag
		def initialize(tag_name, markup, tokens)
			super
			@markup = "#{markup}".strip
		end
		def render(context)
		
			parsed = Liquid::Template.parse(@markup).render context
			url = parsed.split(/ /).first
			if url =~ /^\//
				url = "http://bedford.io" + url
			end				
			text = parsed.split(/ /).drop(1).join(' ')
			html = ""
			url.gsub!(/ /, '%20')
			text.gsub!(/ /, '%20')
			html += "<i class=\"fa fa-twitter fa-fw\"></i> "
            html += "<a class=\"off\" href=\"http://twitter.com/share?url=#{url}&text=#{text}\" target=\"_blank\">"
            html += "tweet"
            html += "</a>" 
			html 
			
		end
	end
end

Liquid::Template.register_tag('tweet', Jekyll::Tweet)