---
layout: paper
title: Hidden Markov models detect recombination and ancestry of SARS-CoV-2
image: /images/papers/masaki-recombinant-lineages-hmm.png
authors: Masaki N, Bedford T.
year: 2025
ref: Masaki and Bedford. 2025. bioRxiv.
journal: "bioRxiv: 2025.11.08.687354."
pdf: /pdfs/papers/masaki-recombinant-lineages-hmm.pdf
supplement: /pdfs/papers/masaki-recombinant-lineages-hmm-supp.pdf
doi: 10.1101/2025.11.08.687354
github: https://github.com/nobuakimasaki/HMM-recombination
---

# Abstract

When individuals are co-infected with distinct SARS-CoV-2 lineages, homologous recombination can generate mosaic genomes carrying mutations from both parental lineages. A variety of methods exist to detect recombinant sequences and their parental lineages in surveillance-scale datasets comprised of millions of SARS-CoV-2 genomes. However, these methods often rely on user-defined settings, such as the probability that a recombination breakpoint occurs between adjacent positions on the query sequence. In this study, we devise a hidden Markov model that detects recombinant SARS-CoV-2 sequences and identifies their parental lineages within a test set of sequences. Our method does not depend on user-defined parameters and can accommodate de novo mutations on the query sequence that are not present in the predicted parental lineages. To achieve this, we use maximum likelihood to estimate parameters that characterize the transition and emission probabilities in our hidden Markov model. Applying our method to 440,307 SARS-CoV-2 sequences sampled in England between September 2020 and March 2024, we detect 7,619 recombinant sequences corresponding to 1.73% (95% CI: [1.69%, 1.77%]) of all sampled sequences. We show a positive association between the proportion of query sequences detected as recombinant in each week and community SARS-CoV-2 prevalence. This is consistent with higher prevalence increasing co-infection risk and promoting the emergence of recombinant sequences. We further observe localized clusters of recombination breakpoints within spike and in intergenic regions.
