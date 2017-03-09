---
layout: post
title: Preliminary analysis of the fifth epidemic of avian influenza A(H7N9)
author: James Hadfield
image: /images/blog/h7n9_geo.png
---

### Background
Avian influenza A(H7N9) has resulted in annual epidemics over the past five years in China. H7N9 has a high mortality rate of around 40% and the currently ongoing fifth epidemic is the largest yet, with 460 infections reported by February 27th, 2017 ([WHO report](http://www.who.int/influenza/vaccines/virus/201703_zoonotic_vaccinevirusupdate.pdf?ua=1)). Transmission is still predominantly from poultry, where H7N9 viruses continue to circulate, and human-to-human transmission is thought to be rare. The CDC considers H7N9 to have "the greatest potential to cause a pandemic" of all influenza A viruses. For more information, see this [CDC information page](https://www.cdc.gov/flu/avianflu/h7n9-virus.htm).


### Nextstrain
[Nextstrain](http://nextstrain.org) now has the ability to display phylogenies and geographical data for both the [NA](http://nextstrain.org/flu/H7N9/HA) and [HA](http://nextstrain.org/flu/H7N9/NA) genes, drawn from over 1200 samples covering all five human epidemics of H7N9.
This analysis was possible thanks to the data sharing of the influenza research community through [GISAID](http://platform.gisaid.org). It is our hope that making these analyses available to the community will aid understanding of this epidemic as it unfolds.
Please note that the analysis currently presented in nextstrain is preliminary and further research is required.


### Phylogeny & Geographic Distribution
![geographic-distribution](/images/blog/h7n9_lineages.png)
The HA phylogeny indicates that the expansion of a single lineage contributes 86% of sequences from the current epidemic. Temporal analysis indicates that this lineage originated during the 2015 (third) epidemic, however only one isolate from this lineage was sampled during the fourth epidemic. Inference of the geographical distribution of H7N9 indicate frequent jumps throughout the eastern coast of China, with limited dispersion elsewhere. Host jumps have also been inferred, however incomplete sampling restricts our ability to comment further.


### Insertion in the Protease Cleavage Site
Highly pathogenic avian influenza viruses are often characterized by insertions in the host protease cleavage site, which enhance the cleavage of HA protein to HA1 and HA2 - a process necessary for infection.
We find a lineage consisting of four isolates with a four amino-acid insertion (KRTA) in this region, in agreement with (Iuliano _et al._)[https://www.cdc.gov/mmwr/volumes/66/wr/mm6609e2.htm]
This insertion is not present in any other isolates, and this lineage contributes less than 10% of the sequences from the current epidemic.
Interestingly, this lineage diverged from the lineage causing most fifth epidemic infections around 2.5 years ago. Despite the lack of expansion during this epidemic, the potential for a highly pathogenic H7N9 variant is worrying and warrants closer inspection.


### Reassortment
![reassortment](/images/blog/h7n9_tangle.png)
Reassortment led to the origin of human H7N9 and continues to play a role during the epidemics. The above figure shows that the monophyly in the HA phylogeny, which contributes the majority of fifth epidemic cases, is comprised of at least two NA clades due to reassortment. The isolates containing the protease cleavage site insertion (in HA) are monophyletic in both HA and NA segments.


### Acknowledgements
A full list of labs and authors who have made data available for analysis in these samples is in [this spreadsheet](http://data.nextstrain.org/gisaid_acknowledge_table_H7N9.xls). All figures from [nextstrain](http://nextstrain.org). Many thanks to Gytis Dudas, Richard Neher and Trevor Bedford for assistance.


<!-- ### mutations on branches leading to expansion -->

<!-- ![image-title-here](/images/blog/h7n9_geo.png){:class="img-responsive"} -->
