# Author: Trevor Bedford
# License: MIT

module Jekyll
	class Eq < Liquid::Tag
		def initialize(tag_name, markup, tokens)
			super
			@markup = "#{markup}".strip
		end
		def render(context)
		
			require 'execjs'
		
			parsed = Liquid::Template.parse(@markup).render context

			katexsrc = open("./js/katex.min.js").read
			@katex = ExecJS.compile(katexsrc)

            style = "text-align: center; margin-top: 0.5em; margin-bottom: 0.5em;"
			div_open = "<div style='#{style}'>"
			parsed = "\\displaystyle " + parsed			
			div_close = "</div>"
			output = div_open + eqn_to_html(parsed) + div_close
			
			return output			

		end
		def eqn_to_html(string)
			return @katex.call("katex.renderToString", string,  { displayMode: true })
		end		
	end
end

Liquid::Template.register_tag('eq', Jekyll::Eq)
