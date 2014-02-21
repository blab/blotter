---
layout: post
title: Predicting flu migration patterns
author: Trevor Bedford
link: /papers/lemey-air-travel/
image: /images/blog/air_travel_tree.png
---

We just had a [paper published in PLoS Pathogens](/papers/lemey-air-travel/) that attempts to discriminate between competing hypotheses for observed influenza migration patterns. In previous papers, like [my own from 2010](/papers/bedford-global-migration/), each entry of the migration matrix, representing the rate at which a viral lineage moves from one particular region to another, was treated as a separate parameter that needs to be estimated.  Because of this, the number of regions that could be simultaneously analyzed was fairly small, with ~10 regions (involving 90 parameters) giving estimates with reasonable certainty from ~1000 sequences.  

In this paper, [Philippe](http://rega.kuleuven.be/cev/ecv/lab-members/PhilippeLemey.html) replaces these free parameters with a general linear model (GLM) specification in which a complete migration matrix is constructed from a set of predictor matrices.  This allows for very complex phylogeographic scenarios to be rigorously compared. Here, Philipe finds that out of 20 predictors, including things like population size, population density and physical proximity, the main predictor of geographic spread is the number of passengers traveling by plane from one region to another.  From my perspective, it's nice to see this level of support for such an intuitive hypothesis.

In the paper, we also show that the GLM estimates of migration rates do better to predict the pandemic spread of H1N1 in 2009 matching outputs of an epidemiological model to surveillance data.  This modeling bit, along with a couple other small things, was my main contribution to the manuscript.