---
layout: paper
title: State-dependent evolutionary models reveal modes of solid tumor growth
image: /images/papers/lewinsohn-boundary-driven-growth.png
authors: Lewinsohn MA, Trevor Bedford T, Müller NF, Feder AF.
year: 2022
ref: Lewinsohn et al. 2022. bioRxiv.
journal: "bioRxiv: 2022.08.05.502978."
pdf: /pdfs/papers/lewinsohn-boundary-driven-growth.pdf
doi: 10.1101/2022.08.05.502978
github: https://github.com/blab/spatial-tumor-phylodynamics
---

# Abstract

Spatial properties of tumor growth have profound implications for cancer progression, therapeutic resistance and metastasis. Yet, how spatial position governs tumor cell division remains difficult to evaluate in clinical tumors. Here, we demonstrate that elevated cellular growth rates on the tumor periphery leave characteristic patterns in the genomes of cells sampled from different parts of a tumor, which become evident when they are used to construct a tumor phylogenetic tree. Namely, rapidly-dividing peripheral lineages branch more extensively and acquire more mutations than slower-dividing lineages in the tumor center. We develop a Bayesian state-dependent evolutionary phylodynamic model (SDevo) that quantifies these patterns to infer the differential cell division rates between peripheral and central cells jointly from the branching and mutational patterns of single-time point, multi-region sequencing data. We validate this approach on simulated tumors by demonstrating its ability to accurately infer spatially-varying birth rates under a range of growth conditions and sampling strategies. We then show that SDevo outperforms state-of-the-art, non-cancer multi-state phylodynamic methods which ignore differential mutational acquisition. Finally, we apply SDevo to multi-region sequencing data from clinical hepatocellular carcinomas and find evidence that cells on the tumor edge divide 2-4x faster than those in the center. As multi-region and single-cell sequencing increase in resolution and availability, we anticipate that SDevo will be useful in interrogating spatial restrictions on tumor growth and could be extended to model non-spatial factors that influence tumor progression, including hypoxia and immune infiltration.
