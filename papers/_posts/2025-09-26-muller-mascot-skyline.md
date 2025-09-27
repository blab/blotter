---
layout: paper
title: MASCOT-Skyline integrates population and migration dynamics to enhance phylogeographic reconstructions
image: /images/papers/muller-mascot-skyline.png
authors: Müller NF, Bouckaert RR, Wu C-H, Bedford T.
year: 2025
ref: Müller et al. 2025. PLoS Comput Biol.
journal: "PLoS Comput Biol 21: e1013421."
pdf: /pdfs/papers/muller-mascot-skyline.pdf
doi: 10.1371/journal.pcbi.1013421
github: https://github.com/nicfel/MascotSkyline-Tutorial
---

# Abstract

The spread of infectious diseases is shaped by spatial and temporal aspects, such as host population structure or changes in the transmission rate or number of infected individuals over time. These spatiotemporal dynamics are imprinted in the genomes of pathogens and can be recovered from those genomes using phylodynamics methods. However, phylodynamic methods typically quantify either the temporal or spatial transmission dynamics, which leads to unclear biases, as one can potentially not be inferred without the other. Here, we address this challenge by introducing a structured coalescent skyline approach, MASCOT-Skyline, that allows us to jointly infer spatial and temporal transmission dynamics of infectious diseases using Markov chain Monte Carlo inference. To do so, we model the effective population size dynamics in different locations using a non-parametric function, allowing us to approximate a range of population size dynamics. We show, using a range of different viral outbreak datasets, potential issues with phylogeographic methods. We then use these viral datasets to motivate simulations of outbreaks that illuminate the nature of biases present in the different phylogeographic methods. We show that spatial and temporal dynamics should be modeled jointly, even if one seeks to recover just one of the two. Further, we showcase conditions under which we can expect phylogeographic analyses to be biased, particularly different subsampling approaches, as well as provide recommendations on when we can expect them to perform well. We implemented MASCOT-Skyline as part of the open-source software package MASCOT for the Bayesian phylodynamics platform BEAST2.
