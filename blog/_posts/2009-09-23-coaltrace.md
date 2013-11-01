---
layout: post
title: Basic coalescent simulation with physics-based layout
author: Trevor Bedford
link: /projects/coaltrace/
image: /images/blog/coaltrace_large.jpg
---

I've written a small Processing [app to visualize the genealogical process](/projects/coaltrace/).  I've seen a lot of evolutionary trees drawn quite nicely.  However, this is the first example that I've seen that presents trees in a dynamic fashion, showing how they evolve over time.  It also allows for interactivity.  For instance, you can see how adding more individuals to an evolving population causes their evolutionary tree to deepen.

Probably the best part about writing this in [Processing](http://processing.org) is how nicely objected-orientated things are.  Each individual in the simulation follows a simple physics simulation, repelling away from other individuals.  This takes care of layout without having to worry about high-level control.

I'm planning on writing more apps in this vein.  I think it might be a very useful framework for data analysis, rather than just simulation. 
