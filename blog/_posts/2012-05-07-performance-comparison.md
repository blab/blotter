---
layout: post
title: Comparing performance of Processing.js and D3.js
author: Trevor Bedford
---

I've just started on a project for [Google Summer of Code](http://code.google.com/soc/), mentoring [Michael Landis](https://plus.google.com/104602171363021110147) at Berkeley.  Michael has proposed to build a browser-based tool to visualize phylogeographic output from [BEAST](http://beast.bio.ed.ac.uk) and similar programs.  Here, we want to track the geographic locations of lineages or species through time across a phylogeny.  An animation would start at the root of the tree and work its way forward to the present, essentially slicing the phylogeny at each point in time and showing the distribution of lineage-specific locations at this slice.

We're still in the planning stages and one of the big questions is which Javascript library to base this on.  The top two contenders are [Processing.js](http://processingjs.org/) and [D3.js](http://d3js.org/).  Processing.js will take code written in [Processing](http://processing.org/), essentially stripped-down Java, and draw to an HTML canvas object, essentially specifying pixels on a grid.  D3, on the other hand, is written as pure Javascript and all of the manipulation is in terms of SVG objects, specifying lines and circles and so on.  Although, I agree in part with [Knuth](http://en.wikipedia.org/wiki/Donald_Knuth) in that "premature optimization is the root of all evil," I wanted to see if performance would have a definite tick in one column or the other.

Here, I coded up a simple Brownian motion style visualization using both programs.  The Processing.js visualization is [here](http://www.trevorbedford.com/performance/processing/) and the D3.js visualization is [here](http://www.trevorbedford.com/performance/d3/).  There are 500 particles, the velocity of which is constantly being bumped up and down by random noise.  The XY window is adjusted every frame to match up with the extent of the XY locations of the particles.  In addition to random noise, there is some friction slowing down the particle velocities and there is an attraction of each particle to {0,0}, making this an [OU process](http://en.wikipedia.org/wiki/Ornstein–Uhlenbeck_process).  Particle sizes are proportional to their velocities.

Browser | Processing.js | D3.js
--------|---------------|------
Safari  | 58            | 29
Chrome  | 40            | 34
Firefox | 40            | 4

Here, I've recorded the frame rates I was getting for both Processing.js and D3.js.  I'm doing all of this on my MacBook Pro.  Your results may vary.  Processing.js running in Safari comes out on top, nearly hitting 60 FPS, while D3.js under Safari gave roughly half this.  Chrome fairs substantially worse with Processing.js, but slightly better with D3.js, while Firefox does terribly with D3.js.  I would imagine that almost all of the differences here will lie in the handling of SVG vs canvas rather than in the D3 and Processing libraries.  Still, although I'm sure SVG performance will continue to improve, for the moment it seems that Processing.js is the clear winner.

Disclaimer: this is one particular visualization.  Incorporating other aspects (transparency, polygons, etc...) could give different results entirely.

