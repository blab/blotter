---
layout: paper
title: "antigen-prime: Simulating coupled genetic and antigenic evolution of influenza virus"
image: /images/papers/thornton-antigen-prime.png
authors: Thornton ZT, Tran T, Figgins MD, Huddleston J, Bedford T, Matsen FA, Haddox HK. 
year: 2026
ref: Thornton et al. 2026. bioRxiv.
journal: "bioRxiv: 2026.01.23.701420."
pdf: /pdfs/papers/thornton-antigen-prime.pdf
doi: 10.64898/2026.01.23.701420
github: https://github.com/matsengrp/antigen-prime
---

# Abstract

Seasonal influenza virus undergoes rapid antigenic drift to escape population immunity. Computational methods can be used to organize viral genetic diversity into antigenically similar variants and estimate variant-specific growth rates. However, benchmarking these methods is challenging because it can be diﬃcult to accurately quantify antigenicity and growth rates in nature. Simulating viral evolution using defined selective pressures can provide ground-truth data for benchmarking. But, existing simulators do not link genetic sequences to antigenic phenotypes under selection from host populations. Here, we present a forward-time epidemic simulator called antigen-prime that links these factors. We use it to simulate viral evolution over 30 years and validate the simulation recapitulates genetic and antigenic patterns observed in natural influenza evolution. We then use the simulated data to benchmark methods for assigning variants and estimating their growth rates. We evaluated a sequence-based and a phylogenetics-based method for variant assignment, finding the former was slightly more eﬀective at separating viruses into antigenically distinct groups. We also evaluated methods for estimating variant growth rates in one-year sliding windows. Estimates were accurate in most windows, but highly inaccurate in several others. Examining high- error windows revealed several examples of a previously unreported failure mode. In all, antigen-prime provides a simulation framework to benchmark models of influenza evolution, and could be used to help guide future development of these models. The source code is openly available at [github.com/matsengrp/antigen-prime](https://github.com/matsengrp/antigen-prime).
