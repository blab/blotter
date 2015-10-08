---
layout: paper
title: Quantifying and mitigating the effect of preferential sampling on phylodynamic inference
image: /images/papers/karcher-preferential-sampling.png
authors: Karcher MD, Palacios JA, Bedford T, Suchard MA, Minin VN.
year: 2015
ref: Karcher et al. 2015. arXiv.
journal: "arXiv: 1510.00775."
pdf: /pdfs/papers/karcher-preferential-sampling.pdf
---

# Abstract

Phylodynamics seeks to estimate effective population size fluctuations from molecular sequences of individuals sampled from a population of interest. One way to accomplish this task formulates an observed sequence data likelihood exploiting a coalescent model for the sampled individuals' genealogy and then integrating over all possible genealogies via Monte Carlo or, less efficiently, by conditioning on one genealogy estimated from the sequence data. However, when analyzing sequences sampled serially through time, current methods implicitly assume either that sampling times are fixed deterministically by the data collection protocol or that their distribution does not depend on the size of the population. Through simulation, we first show that, when sampling times do probabilistically depend on effective population size, estimation methods may be systematically biased. To correct for this deficiency, we propose a new model that explicitly accounts for preferential sampling by modeling the sampling times as an inhomogeneous Poisson process dependent on effective population size. We demonstrate that in the presence of preferential sampling our new model not only reduces bias, but also improves estimation precision. Finally, we compare the performance of the currently used phylodynamic methods with our proposed model through clinically-relevant, seasonal human influenza examples.
