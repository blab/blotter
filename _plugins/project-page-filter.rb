# takes page.path and prettifies name
# projects/stem/data/index.md => stem/data/
# projects/stem/data/example.md => stem/data/example

module Jekyll
	module ProjectPageName
		def project_page_name(input)
			input.sub(/^projects\//, '').sub(/.md$/, '').sub(/index$/, '')
		end
	end
end

Liquid::Template.register_filter(Jekyll::ProjectPageName)

# takes page.path and exports url
# projects/stem/data/index.md => /projects/stem/data/
# projects/stem/data/example.md => /projects/stem/data/example.html

module Jekyll
	module ProjectPageURL
		def project_page_url(input)
			"/" + input.sub(/.md$/, '.html').sub(/index.html/, '')
		end
	end
end

Liquid::Template.register_filter(Jekyll::ProjectPageURL)