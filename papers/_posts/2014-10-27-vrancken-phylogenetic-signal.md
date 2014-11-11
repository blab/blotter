---
layout: paper
title: "Simultaneously estimating evolutionary history and repeated traits phylogenetic signal: applications to viral and host phenotypic evolution"
image: /images/papers/vrancken-phylogenetic-signal.png
authors: Vrancken B, Lemey P, Rambaut A, Bedford T, Longdon B, Gunthard H, Suchard MA.
year: 2014
ref: Vrancken et al. 2014. Methods Ecol Evol.
journal: "Methods Ecol Evol. In press."
pdf: /pdfs/papers/vrancken-phylogenetic-signal.pdf
supplement: /pdfs/papers/vrancken-phylogenetic-signal-supp.pdf
doi: 10.1111/2041-210X.12293
---

# Abstract

Phylogenetic signal quantifies the degree to which resemblance in continuously-valued traits reflects phylogenetic relatedness. Measures of phylogenetic signal are widely used in ecological and evolutionary research, and are recently gaining traction in viral evolutionary studies. Standard estimators of phylogenetic signal frequently condition on data summary statistics of the repeated trait observations and fixed phylogenetics trees, resulting in information loss and potential bias.

To incorporate the observation process and phylogenetic uncertainty in a model-based approach, we develop a novel Bayesian inference method to simultaneously estimate the evolutionary history and phylogenetic signal from molecular sequence data and repeated multivariate traits. Our approach builds upon a phylogenetic diffusion framework that model continuous trait evolution as a Brownian motion process and incorporates Pagel’s &lambda; transformation parameter to estimate dependence among traits. We provide a computationally efficient inference implementation in the BEAST software package.

We evaluate the synthetic performance of the Bayesian estimator of phylogenetic signal against standard estimators, and demonstrate the use of our coherent framework to address several virus-host evolutionary questions, including virulence heritability for HIV, antigenic evolution in influenza and HIV, and Drosophila sensitivity to sigma virus infection. Finally, we discuss model extensions that will make useful contributions to our flexible framework for simultaneously studying sequence and trait evolution.