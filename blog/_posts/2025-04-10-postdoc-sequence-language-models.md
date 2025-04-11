---
layout: post
title: Postdoc in applying sequence language models to understand and forecast evolution
author: Trevor Bedford
---

We have an opening for a postdoc in the Bedford Lab at the Fred Hutch Cancer Center to work on developing and applying DNA and protein language models to understand and forecast viral evolution.

The Bedford Lab has worked extensively in the field of viral evolutionary forecasting.
In this context, we've developed models to estimate fitness of seasonal influenza variants from genetic sequence data and to then use fitness estimates to forecast variant frequencies ([Huddleston et al., eLife, 2020](/papers/huddleston-flu-forecasting/)).
We've taken a similar approach to forecasting SARS-CoV-2 variants in applying multinomial logistic regression (MLR) to estimate variant fitness and to project frequencies forward in time ([Abousamra et al., PLoS Comput Biol, 2024](/papers/abousamra-ncov-forecasting-fit/)).
This approach underlies our live SARS-CoV-2 evolutionary forecasts at [nextstrain.org/sars-cov-2/forecasts](https://nextstrain.org/sars-cov-2/forecasts).
Our influenza forecasts are directly utilized by the World Health Organization in the [twice yearly vaccine strain selection meetings](https://www.who.int/initiatives/global-influenza-surveillance-and-response-system) for seasonal influenza.

Recent advances in deep learning, especially transformer-based language models for protein sequences (see [ESM3](https://www.science.org/doi/10.1126/science.ads0018)) and DNA sequences (see [Evo2](https://www.biorxiv.org/content/10.1101/2025.02.18.638918v1)), present exciting new avenues to enhance evolutionary predictions.
These models, trained to predict residues or nucleotides based on sequence context, have potential to significantly improve predictions of variant fitness and evolution.

In this role, you'll initially focus on incorporating state-of-the-art language models to assess and predict the fitness of influenza and SARS-CoV-2 variants, comparing these predictions to our established statistical models.
A key aim is to leverage these advanced models to provide deeper insights than traditional "mutational load" metrics, which simply count the number of amino acid changes.
Additionally, you will explore how embedding spaces derived from these language models could offer new perspectives on evolutionary processes (see [Hie et al](https://www.science.org/doi/10.1126/science.abd7331) for an example of looking at semantic change via embedding).
Beyond applying existing language model frameworks, you'll have opportunities to design novel model architectures to describe the process of sequence evolution.

The ideal candidate will have experience working with deep learning models via PyTorch or other frameworks.
However, candidates with more traditional experience in sequence data and phylogenetic approaches who are excited to dive into deep learning models are also strongly encouraged to apply.
Candidates should have experience in at least one programming language and a proven track-record of peer reviewed publications.
A quantitative background is essential, though PhDs from diverse fields including biology, mathematics, statistics, physics and computer science are welcome.
The Fred Hutch is an equal opportunity employer committed to workforce diversity.
Applicants of diverse backgrounds are particularly encouraged to apply.

The position is available immediately with flexible starting dates.
Informal inquires are welcome.
Applications will be accepted until the position is filled.
Fred Hutch offers competitive compensation and benefits packages.

To apply please submit
 1. cover letter that includes the names and contacts for three references and a short statement of research interests
 2. a current CV
 3. code samples or links to code on GitHub

 Send application materials or inquiries to tb<span style="display:none">obfuscate</span>@bedford.io.

 _This is a general area of interest for the lab. If you're interested in deep learning for biological sequence data and are not at the postdoc career stage, please still get in touch._
