---
layout: post
title: Bayesian estimation of phylogenetic signal
author: Trevor Bedford
link: /papers/vrancken-phylogenetic-signal/
image: /images/blog/phylogenetic_signal.png
---

We've just had a paper published in [Methods in Ecology and Evolution](http://onlinelibrary.wiley.com/doi/10.1111/2041-210X.12293/abstract) on ["Simultaneously estimating evolutionary history and repeated traits phylogenetic signal"](/papers/vrancken-phylogenetic-signal/).  This work, lead by [Bram Vrancken](https://rega.kuleuven.be/cev/ecv/lab-members/BramVrancken.html), [Philippe Lemey](https://rega.kuleuven.be/cev/ecv/lab-members/PhilippeLemey.html) and [Marc Suchard](http://faculty.biomath.ucla.edu/msuchard/), estimates *phylogenetic signal* in a fully Bayesian fashion, integrating over uncertainty in evolutionary history.  This method provides an estimate of the extent to which variance of a continuous trait (like viral load) can be explained by evolutionary relatedness and thus gives an estimate of the trait's [heritability](http://en.wikipedia.org/wiki/Heritability).

{% katexmm %}
Of particular interest to me, is that this method gives a heritability estimate of [influenza antigenic phenotype](/blog/influenza-antigenic-dynamics/) of ~0.73, which it quite high and supports a strong genetic basis to antigenic phenotype.  Here, total variance in a phenotype trait stems from a combination of variance due to genotype and variance due to the environment $V_P = V_G + V_E$, so that heritability is measured as the proportion of the total variance explained by genotype $H^2 = V_G / V_P$.  In the case of influenza antigenic phenotype we expect noise in the [hemagglutination inhibition (HI) assay](http://en.wikipedia.org/wiki/Hemagglutination_assay) to contribute to total variance, so $H^2 \approx 0.73$ should represent a lower bound to actual heritability.
{% endkatexmm %}
