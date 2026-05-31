# Convenience targets for blotter development.
# See README.md "Development workflow" for when to run each.

desc "Fetch READMEs from each repo in _config.yml's `readmes:`, rewrite links, download images, write projects/<name>/index.md"
task :readmes do
	sh "ruby _scripts/generate-readmes.rb"
end

desc "Add front matter and rewrite links in .md files under `projects:` (full-clone) project directories"
task :preprocess do
	sh "ruby _scripts/preprocess-markdown.rb"
end

desc "Query GitHub for project metadata via Octokit; writes _data/projects.yml (requires GITHUB_TOKEN)"
task :data do
	sh "ruby _scripts/generate-project-data.rb"
end

desc "bundle exec jekyll build"
task :build do
	sh "bundle exec jekyll build"
end

desc "bundle exec jekyll serve --livereload"
task :serve do
	sh "bundle exec jekyll serve --livereload"
end

desc "Full preprocess + build (readmes, preprocess, data, build) — use to seed a fresh checkout"
task :all => [:readmes, :preprocess, :data, :build]

task :default => :build
