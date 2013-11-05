---
layout: post
title: Spatial guilds in the Serengeti food web revealed by a Bayesian group model
author: Trevor Bedford
link: /papers/baskerville-2011-spatial/
image: /images/blog/serengeti.jpg
---

Our [paper on modeling food webs](/papers/baskerville-2011-spatial/) was just published in PLoS Computational Biology.  Here, I was happy to bring the statistics I've learned from phylogenetic analysis to an entirely different field.  I advised [Ed Baskerville](http://edbaskerville.com/) in implementing MCMC and marginal likelihood estimation for network data.  In this case, the data is a matrix of predator-prey relationships, which can be thought of as a network of directed edges specifying who-eats-whom.  We investigated <i>structure</i> in the Serengeti food web through a model in which groups of species behave similarly to one another in terms of what species they eat and what species they are eaten by.  The inferred model shows a high degree of trophic and spatial clustering in which a number of spatially distinct plant groups are fed upon by a few wider-ranging herbivore groups, which are in turn fed upon by just a couple of predator groups.  

Also of possible interest, [the supporting appendix](/pdfs/papers/baskerville-group-model-supp.pdf) provides a nice overview of the use Bayesian methods for inference on network data.  The model we present here really should be useful in a variety of biological contexts; genetic regulatory networks and protein interaction networks immediately come to mind. *Photo by [Andy Dobson](http://www.princeton.edu/~dobber/)*.

