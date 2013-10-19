---
layout: post
title: Global migration dynamics underlie evolution and persistence of human influenza A (H3N2)
author: Trevor Bedford
link: http://www.trevorbedford.com/pdfs/bedford-flu-mig-2010.pdf
image: /images/flumap.png
---

Today, my paper on [migration patterns in the flu virus](/pdfs/bedford-flu-mig-2010.pdf) was published in PLoS Pathogens.  This was fun work to do, requiring approaches from multiple disciplines.  While the basics of the migration model came from population genetics and coalescent theory, fitting this model to sequence data required a lot of heavy-lifting computation implemented by Peter Beerli in the program [Migrate](http://popgen.sc.fsu.edu/Migrate-n.html).  I originally wrote my program [PACT](/pact/index.html) to deal with the enormous (2000+ tips) phylogenetic trees produced by this analysis.  Additionally, a lot of epidemiology went in to making realistic simulations on which to hone the methods.

The common ancestor of all contemporaneous H3N2 flu can be traced back to a single infection occurring somewhere in the world approximately 2-5 years before hand.  This infection, by luck and by virtue of its genotype, becomes the progenitor of the entire worldwide flu population.  The main goal of this analysis was to trace this progenitor lineage through time.  We found that this lineage existed primarily in China and Southeast Asia, but also, surprisingly, in the USA.  The occasional presence of this progenitor lineage in USA has important public health implications.

I'm not terribly happy with the PLoS presentation.  Rather than keeping figures as line art, they were converted to low quality bitmaps.  Also, I don't like the splitting of the supporting information into 10 different files.  So, in addition to the paper, I'm hosting high quality PDFs of the figures and a single PDF of the entire supporting appendix.  Go [here](/papers.html).
