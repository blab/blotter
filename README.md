# bedford lab research

## Build site

To build the website locally, clone the repo and change into the repo's directory.

```
git clone https://github.com/blab/blotter.git
cd blotter/
```

Install the latest version of Ruby supported by blotter using [rbenv](https://github.com/rbenv/rbenv) to work around any system-wide Ruby installations that may be incompatible.

``` bash
rbenv install
```

Check that `gem` is available through the rbenv installation.
If it is not, consult the rbenv documentation above to resolve the issue.

``` bash
which gem
```

Install bundler.

``` bash
gem install bundler
```

Install blotter's Ruby dependencies.

``` bash
bundle install
```

Build the site.

```
bundle exec jekyll build
```

> [!IMPORTANT]
> If you are getting errors at this stage, it may be due to your version of `bundle`.
> Try `gem uninstall bundler` + `gem install bundler -v 1.13.1`.

Start a local Jekyll server to view the site.

``` bash
bundle exec jekyll serve
```

Open your browser to `http://localhost:4000/`. More information on Jekyll can be found [here](http://jekyllrb.com/).

To include project pages, three preprocessing scripts fetch data from GitHub before Jekyll runs. First-time setup clones the `projects:` full-clone repos into `projects/<name>/`:

```
ruby _scripts/update-and-preprocess.rb
```

After that, use the Rakefile targets below for day-to-day iteration.

## Development workflow

A `Rakefile` exposes the preprocessing steps and Jekyll build as named targets:

| Target | What it does |
|---|---|
| `rake readmes` | Fetch each repo in `_config.yml`'s `readmes:` list, rewrite links to GitHub, download images, write `projects/<name>/index.md`. |
| `rake preprocess` | Walk `.md` files under `projects:` (full-clone) project directories, add front matter, rewrite `.md → .html` and source-file links. |
| `rake data` | Query GitHub via Octokit for project metadata (contributors, recent commits, homepage). Writes `_data/projects.yml`. Requires `GITHUB_TOKEN`. |
| `rake build` | `bundle exec jekyll build`. |
| `rake serve` | `bundle exec jekyll serve --livereload`. |
| `rake all` | Run `readmes`, `preprocess`, `data`, then `build`. Useful for a clean re-seed. |

Typical inner loop:

1. Once per session (or whenever upstream data may have changed), seed: `rake all`.
2. Iterate: `rake serve` and edit files. Jekyll auto-rebuilds.
3. When editing a preprocessing script, re-run only that script's target — e.g. `rake readmes && rake build`. The `_scripts/generate-readmes.rb` output is idempotent, so you can re-run freely without first wiping state.

The deploy driver `blotter-deploy.rb` (in the sibling `blotter-deploy` repo) rebuilds everything from a clean state via `git reset --hard` + `git clean -f`, and is meant for validating the full deploy pipeline, not for fast iteration. Don't edit files inside its `blotter/` checkout — they'll be wiped on the next `--test` run.

## Contribute

Blog posts just require YAML top matter that looks something like:

```
---
layout: post
title: Newton Institute presentation
author: Trevor Bedford
link: http://www.newton.ac.uk/programmes/IDD/seminars/2013082213301.html
image: /images/blog/transmission.png
---
```

The `layout`, `title` and `author` tags are required, while `link` and `image` are optional.  Just save a Markdown file with this top matter as something like `blog/_posts/2013-08-27-newton-institute.md`, where `2013-08-27` is the date of the post and `newton-institute` is the short title.  This short title is used in the URL of the post, so this becomes `blog/newton-institute/`, so the short title should be long enough and unique enough not to cause conflicts with other posts.

## For more information

* Look over the [metadata format guide](http://bedford.io/guide/format/)
* Look over the [Markdown style guide](http://bedford.io/guide/style/)

## License

All source code in this repository, consisting of files with extensions `.html`, `.css`, `.less`, `.rb` or `.js`, is freely available under an MIT license, unless otherwise noted within a file. You're welcome to borrow / repurpose code to build your own site, but I would very much appreciate attribution and a link back to [bedford.io](http://bedford.io) from your `about` page.

**The MIT License (MIT)**

Copyright (c) 2013-2024 Trevor Bedford

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
