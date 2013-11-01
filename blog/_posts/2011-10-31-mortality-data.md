---
layout: post
title: Visualizing mortality data
author: Trevor Bedford
link: http://www.trevorbedford.com/mortality/
image: /images/blog/mortality_small.png
---

I came across a simple [visualization of England and Wales mortality data in the Guardian](http://www.guardian.co.uk/news/datablog/2011/oct/28/mortality-statistics-causes-death-england-wales-2010#_).  And because I couldn't deal with the network-y display of hierarchical count data, I decided to redesign the graphic as a tree map.  In googling for "treemap", I found [d3.js](http://mbostock.github.com/d3/), which makes extremely attractive Javascript graphics, with a number of rather fancy built-in figure types.  It seems a little harder to get into than [Processing](http://processing.org/), as it exposes more of the raw Javascript, but the results are beautiful and it provides full SVG support.  Here's the [mortality data laid out with d3's treemap algorithm](http://www.trevorbedford.com/mortality/).

