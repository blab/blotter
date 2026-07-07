---
layout: post
title: Fitness flux in SARS-CoV-2 and influenza H3N2
author: Trevor Bedford
link: https://blab.github.io/fitness-flux/
image: /images/blog/ncov_fitness_flux.png
---

In the preprint ["Fitness flux in SARS-CoV-2 and influenza H3N2"](/papers/bedford-fitness-flux/) I describe a new method to quantify adaptation in rapidly evolving populations. Historically, molecular evolution and population genetics focuses on rates of mutation and looks for excess of certain classes of mutation, but with rapidly evolving viruses like SARS-CoV-2 and seasonal influenza it's possible to directly observe the replacement of old strains by new strains. By quantifying these _frequency dynamics_, I directly estimate the relative growth rate of circulating strains. This in turn gives a metric of _fitness flux_ or the rate of change of mean population fitness, which represents a more direct readout of the rate of adaptation compared to metrics like comparing nonsynonymous to synonymous substitution rates (dN/dS). I use this approach to identify receptor binding domain (RBD) mutations in the spike protein as the primary molecular driver of ongoing SARS-CoV-2 fitness gain. This simple prediction of fitness gain from spike mutations compares favorably to recently proposed deep learning methods to predict SARS-CoV-2 evolution.

All the way back during postdoc I been playing around with lightweight online "publishing" for my scientific papers. A first experiment in 2012 was with the [BMC Biology "canalization" paper](/papers/bedford-canalization/), where I had mirrored it online to [trvrb.github.io/canalization](https://trvrb.github.io/canalization/). Here, I had set up the LaTeX manuscript to compile to PDF for journal submission but to also compile to HTML for sharing via GitHub Pages.

In first author work on the fitness flux preprint, I took the opportunity to revisit this same theme with more modern technology. The paper is available at [blab.github.io/fitness-flux](https://blab.github.io/fitness-flux/). Here I've included things like
1. Interactive JavaScript figures, allowing for nice affordances like toggling axes and hovering over datapoints for context,
2. Everything you'd expect for scientific authoring including TeX math, figure and table references, citations, etc...
3. Responsive design where the whole paper reflows for mobile vs desktop including figure panel layout.

This should give a better reading experience on desktop and on mobile relative to PDF via bioRxiv and relative to (eventual) publisher's website.

In addition, I got the [fitness flux repo](https://github.com/blab/fitness-flux) into shape where the entire analysis rebuilds just by running `nextstrain build` (or `snakemake`). This includes downloading raw data, running all the analyses and regenerating all manuscript figures.
Given one of the main questions of the paper was "is SARS-CoV-2 slowing in its evolution?", I wanted a setup that would allow this question to be easily revisited in 6-months, a year's time, or periodically after this.

This structure would even permit a fully automated "living paper" that continually updates through GitHub Actions every day or every week as fresh data appears.
This is similar in spirit to the machinery we arrived at for [Nextstrain pathogen surveillance](/papers/andrews-nextstrain-pathogens/).
I've set up semantic versioning for the paper to provide a foundation for potential continued updates.

I'll be submitting the paper in the normal preprint-to-peer-review flow, but I'd encourage feedback through either comments to [bioRxiv preprint](), issues to [GitHub repo](https://github.com/blab/fitness-flux) or just email.
