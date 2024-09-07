---
layout: paper
title: Fitness models provide accurate short-term forecasts of SARS-CoV-2 variant frequency
image: /images/papers/abousamra-ncov-forecasting-fit.png
authors: Abousamra E, Figgins MD, Bedford T.
year: 2024
ref: Abousamra et al. 2024. PLoS Comput Biol.
journal: "PLoS Comput Biol 20: e1012443."
pdf: /pdfs/papers/abousamra-ncov-forecasting-fit.pdf
supplement: /pdfs/papers/abousamra-ncov-forecasting-fit-supp.pdf
doi: 10.1371/journal.pcbi.1012443
github: https://github.com/blab/ncov-forecasting-fit
---

# Abstract

Genomic surveillance of pathogen evolution is essential for public health response, treatment strategies, and vaccine development. In the context of SARS-COV-2, multiple models have been developed including Multinomial Logistic Regression (MLR) describing variant frequency growth as well as Fixed Growth Advantage (FGA), Growth Advantage Random Walk (GARW) and Piantham parameterizations describing variant Rt. These models provide estimates of variant fitness and can be used to forecast changes in variant frequency. We introduce a framework for evaluating real-time forecasts of variant frequencies, and apply this framework to the evolution of SARS-CoV-2 during 2022 in which multiple new viral variants emerged and rapidly spread through the population. We compare models across representative countries with different intensities of genomic surveillance. Retrospective assessment of model accuracy highlights that most models of variant frequency perform well and are able to produce reasonable forecasts. We find that the simple MLR model provides ∼0.6% median absolute error and ∼6% mean absolute error when forecasting 30 days out for countries with robust genomic surveillance. We investigate impacts of sequence quantity and quality across countries on forecast accuracy and conduct systematic downsampling to identify that 1000 sequences per week is fully sufficient for accurate short-term forecasts. We conclude that fitness models represent a useful prognostic tool for short-term evolutionary forecasting.
