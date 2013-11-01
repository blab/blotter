---
layout: post
title: Canalization of the evolutionary trajectory of the human influenza virus
author: Trevor Bedford
image: /images/blog/canal_map.png
---

In an ongoing effort to be more open in my scientific dealings, I've posted a preprint of my latest paper [to the arXiv](http://arxiv.org/abs/1111.4579) and here on my website, as both [PDF](http://www.trevorbedford.com/pdfs/bedford-canalization-2011.pdf) and [HTML](http://www.trevorbedford.com/canalization/index.html).  This represents my first attempt at a straight-up modeling study.  There's a lot going on with the epidemiology and evolution of influenza; I've made a model that attempts capture all the salient details.  This includes things like the yearly attack rates, rate of antigenic evolution, genetic diversity, and geographic spread.  At it's core, the model assumes that the antigenic phenotype of the virus can be adequately explained as a point in a Euclidean space.  Mutation serves to jostle the location of the virus in this space and infection by one virus confers immunity to subsequent infection by nearby viruses in this antigenic space.  The geometric basis of the model stems from empirical studies of influenza's antigenic phenotype (see [Smith et al. 2004](http://www.sciencemag.org/content/305/5682/371.short)).  In this study, I find that evolution in such a space results in a "canalized" trajectory.  The best move for a virus is to move as far away from its past as possible, resulting in linear antigenic movement and a distinctive single-trunked phylogenetic tree.

I'm especially proud of my [HTML version of the manuscript](http://www.trevorbedford.com/canalization/), which, through the magic of LaTeX, has all sorts of hyperlinking between figures and references.  In addition, I've done my best to make something that's highly readable on the screen.  Almost everything is taken care of by [TeX4ht](http://tug.org/tex4ht/) conversion from my LaTeX source and with a CSS stylesheet, so with only a little more work I should be able to fully automate the process.

I'm working now to put the source code for the simulations behind this online.  In the meantime, I would very much welcome any feedback you might have on the manuscript.  Good to get feedback before publication, when there's still an opportunity to incorporate it.

