# construct breadcrumb array from page path
# Examples
# stem/data/ -> [ stem/, stem/data/ ]
# dynamics-practical/02-prepare-a-skyline-analysis -> [ dynamics-practical/, dynamics-practical/02-prepare-a-skyline-analysis ]

module Jekyll
        module BreadcrumbArray
                def breadcrumb_array(input)
                	parts = input.split(/\//)
                	paths = Array.new
                	for i in (0...parts.size) do
                		path = parts[0..i].join('/')
                		if i < parts.size - 1 || input.end_with?('/')
                			path += '/'
                		end
                		paths = paths.push(path)
                	end
                	paths
                end
        end
end

Liquid::Template.register_filter(Jekyll::BreadcrumbArray)