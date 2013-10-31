# bedford lab research

## Build site

To build the website locally, clone the repo with:

```
git clone https://github.com/blab/blotter.git
```

Then install necessary Ruby dependencies by running `bundle install` from within the `blotter` directory.  After this, the site can be be built with:

```
jekyll build
```

To view the site, run `jekyll serve` and point a browser to `http://localhost:4000/`.  More information on Jekyll can be found [here](http://jekyllrb.com/).

## Contribute

Blog posts just require YAML top matter that looks something like:

```
---
layout: post
title: Newton Institute presentation
author: Trevor Bedford
link: http://www.newton.ac.uk/programmes/IDD/seminars/2013082213301.html
image: /images/transmission.png
---
```

The `layout`, `title` and `author` tags are required, while `link` and `image` are optional.  Just save a Markdown file with this top matter as something like `blog/_posts/2013-08-27-newton-institute.md`, where `2013-08-27` is the date of the post and `newton-institute` is the short title.  This short title is used in the URL of the post, so this becomes `blog/newton-institute/`, so the short title should be long enough and unique enough not to cause conflicts with other posts.

For more information:

* Look over the [metadata format guide](http://d222d025jpv90o.cloudfront.net/guide/format/)
* Look over the [Markdown style guide](http://d222d025jpv90o.cloudfront.net/guide/style/)



