---
layout: post
title: Interactive visualization of the Serengeti food web
author: Trevor Bedford
link: http://edbaskerville.com/static/research/serengeti-food-web/groups-figure3-interactive/
---

In the [Serengeti food web paper](/papers/baskerville-2011-spatial/), we present a network diagram of predator-prey relationships, illustrating network structure (Figure 3).  In getting with the times, we've also made an [interactive version of this figure, presenting the network in a force-directed layout](http://edbaskerville.com/static/research/serengeti-food-web/groups-figure3-interactive/).  Ed coded this up in [d3.js](http://mbostock.github.com/d3/) based on a version I did in [Processing](http://processing.org/).  Green nodes represent plants, blue nodes represent herbivores and red nodes represent carnivores.  Edges connecting nodes pull them toward each other following Hooke's Law, while nodes are repelled from each other according to Coulomb's Law.  We add an additional force pulling nodes belonging to the same group toward each other.

My favorite part of the visualization is the concept of *focus*.  If you click on a node, the spring forces applied to the edges of this node are magnified, pulling its connections closer.  This makes it easier to explore relationships in the network.  A double-click removes focus.

