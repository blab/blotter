---
layout: paper
title: Quantifying and mitigating the effect of preferential sampling on phylodynamic inference
image: /images/papers/karcher-preferential-sampling.png
authors: Karcher MD, Palacios JA, Bedford T, Suchard MA, Minin VN.
year: 2016
ref: Karcher et al. 2016. PLoS Comput Biol.
journal: "PLoS Comput Biol 12: e1004789."
pdf: /pdfs/papers/karcher-preferential-sampling.pdf
supplement: /pdfs/papers/karcher-preferential-sampling-supp.pdf
doi: 10.1371/journal.pcbi.1004789
github: https://github.com/mdkarcher/phylodyn
---

# Abstract

Phylodynamics seeks to estimate changes in population size from genetic data sampled from individuals across a particular population. One approach to accomplish this task uses a model called the coalescent, which relates the shape of the individuals' shared ancestral tree to genetic diversity, which is in turn related to population size. However, when analyzing genetic data sampled at different times, current techniques assume that sampling times are fixed ahead of time or are distributed randomly without any relation to the size of the population. Through simulation, we show that when sampling times are related to population size, a situation referred to as preferential sampling, those estimation methods may be systematically biased. To fix this problem, we propose a new model that explicitly accounts for and models the preferential sampling. We show that in the presence of preferential sampling our new technique not only fixes the bias, but also has improved precision in its population size estimates. We also compare the performance of the old and new techniques on several real-world seasonal human influenza examples.
