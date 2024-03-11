---
layout: paper
title: MASCOT-Skyline integrates population and migration dynamics to enhance phylogeographic reconstructions
image: /images/papers/muller-mascot-skyline.png
authors: Müller NF, Bouckaert RR, Wu C-H, Bedford T.
year: 2024
ref: Müller et al. 2024. bioRxiv.
journal: "bioRxiv: 2024.03.06.583734."
pdf: /pdfs/papers/muller-mascot-skyline.pdf
doi: 10.1101/2024.03.06.583734
github: https://github.com/nicfel/MascotSkyline-Tutorial
---

# Abstract

Phylodynamic methods can quantify temporal and spatial transmission dynamics of infectious diseases from information contained in phylogenetic trees. Usually, phylodynamic methods infer spatial or temporal transmission dynamics separately, leading to biased inferences and limiting their application to study disease spread. Here, we introduce a structured coalescent skyline approach, MASCOT-Skyline, to quantify spatial transmission patterns of infectious diseases and how population sizes and migration rates change over time. We model the effective population size dynamics in different locations using a non-parametric function, allowing us to approximate a range of population size dynamics. We implemented the inference of non-parametric population size dynamics as part of the Bayesian phylodynamics platform BEAST2 and the software package MASCOT. Using a range of data sets and simulations, we show that both temporal and spatial dynamics should be modeled to provide accurate inferences, even when only one or the other is of interest. Current methods that model either spatial or temporal transmission dynamics, but not both simultaneously, are biased in various situations. However, accounting for both simultaneously, we can retrieve complex temporal dynamics across different locations from pathogen genome data while providing accurate estimates of the transmission rates between those locations.
