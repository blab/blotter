---
layout: paper
title: "dms-view: Interactive visualization tool for deep mutational scanning data"
image: /images/papers/hilton-dms-view.png
authors: Hilton SK, Huddleston JL, Black A, North K, Dingens AS, Bedford T, Bloom JD.
year: 2020
ref: Hilton et al. 2020. bioRxiv.
journal: "bioRxiv: 2020.05.14.096842."
pdf: /pdfs/papers/hilton-dms-view.pdf
doi: 10.1101/2020.05.14.096842
github: https://github.com/dms-view
---

# Abstract

The high-throughput technique of deep mutational scanning (DMS) has recently made it possible to experimentally measure the effects of all amino-acid mutations to a protein. Over the past five years, this technique has been used to study dozens of different proteins and answer a variety of research questions. For example, DMS has been used for protein engineering, understanding the human immune response to viruses, and interpreting human variation in a clinical setting. Accompanying this proliferation of DMS studies has been the development of software tools and databases for data analysis and sharing. However, for many purposes it is important to also integrate and visualize the DMS data in the context of other information, such as the 3-D protein structure or natural sequence-variation data. Here we describe dms-view ([dms-view.github.io](https://dms-view.github.io)), a flexible, web-based, interactive visualization tool for DMS data. dms-view is written in JavaScript and D3, and links site-level and mutation-level DMS data to a 3-D protein structure. The user can interactively select sites of interest to examine the DMS measurements in the context of the protein structure. dms-view tracks the input data and user selections in the URL, making it possible to save specific views of interactively generated visualizations to share with collaborators or to support a published study. Importantly, dms-view takes a flexible input data file so users can easily visualize their own DMS data in the context of protein structures of their choosing, and also incorporate additional information such amino-acid frequencies in natural alignments.
