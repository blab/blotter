---
layout: paper
title: Dimensionality reduction distills complex evolutionary relationships in seasonal influenza and SARS-CoV-2
image: /images/papers/nanduri-cartography.png
authors: Nanduri S, Black A, Bedford T, Huddleston J.
year: 2024
ref: Nanduri et al. 2024. bioRxiv.
journal: "bioRxiv: 2024.02.07.579374."
pdf: /pdfs/papers/nanduri-cartography.pdf
supplement: /pdfs/papers/nanduri-cartography-supp.pdf
doi: 10.1101/2024.02.07.579374
github: https://github.com/blab/cartography
---

# Abstract

Public health researchers and practitioners commonly infer phylogenies from viral genome sequences to understand transmission dynamics and identify clusters of genetically-related samples.
However, viruses that reassort or recombine violate phylogenetic assumptions and require more sophisticated methods.
Even when phylogenies are appropriate, they can be unnecessary or difficult to interpret without specialty knowledge.
For example, pairwise distances between sequences can be enough to identify clusters of related samples or assign new samples to existing phylogenetic clusters.
In this work, we tested whether dimensionality reduction methods could capture known genetic groups within two human pathogenic viruses that cause substantial human morbidity and mortality and frequently reassort or recombine, respectively: seasonal influenza A/H3N2 and SARS-CoV-2.
We applied principal component analysis (PCA), multidimensional scaling (MDS), t-distributed stochastic neighbor embedding (t-SNE), and uniform manifold approximation and projection (UMAP) to sequences with well-defined phylogenetic clades and either reassortment (H3N2) or recombination (SARS-CoV-2).
For each low-dimensional embedding of sequences, we calculated the correlation between pairwise genetic and Euclidean distances in the embedding and applied a hierarchical clustering method to identify clusters in the embedding.
We measured the accuracy of clusters compared to previously defined phylogenetic clades, reassortment clusters, or recombinant lineages.
We found that MDS maintained the strongest correlation between pairwise genetic and Euclidean distances between sequences and best captured the intermediate placement of recombinant lineages between parental lineages.
Clusters from t-SNE most accurately recapitulated known phylogenetic clades and recombinant lineages.
Both MDS and t-SNE accurately identified reassortment groups.
We show that simple statistical methods without a biological model can accurately represent known genetic relationships for relevant human pathogenic viruses.
Our open source implementation of these methods for analysis of viral genome sequences can be easily applied when phylogenetic methods are either unnecessary or inappropriate.
