---
layout: post
title: Predicting seasonal influenza evolution
authors:
  - John Huddleston
  - Pierre Barrat-Charlaix
date: 2020-10-13
---

In this post, we summarize and synthesize the results of our recent efforts to predict influenza evolution as described in [Huddleston et al. 2020](https://doi.org/10.7554/eLife.60067) and [Barrat-Charlaix et al. 2020](https://www.biorxiv.org/content/10.1101/2020.07.31.231100v1).

### Why do we try to predict seasonal influenza evolution?

Seasonal influenza (or "flu") sickens or kills millions of people per year.
Flu vaccines are one of the most effective preventative measures against infection.
However, flu vaccines require almost a year to develop and can only contain a single representative virus per flu lineage (A/H3N2, A/H1N1pdm, B/Victoria, and B/Yamagata).
These limitations require researchers to predict which single current flu virus will be the most representative of the flu population one year in the future.
The better these predictions are, the more likely the vaccine will prevent illness and death from infection.

### How do we think flu evolves?

Flu rapidly accumulates mutations during replication, due to its error-prone RNA polymerase.
For most flu genes, most new amino acid mutations will weaken the functionality of their corresponding proteins and reduce the virus's fitness.
For flu's primary surface proteins, hemagglutinin (HA) and neuraminidase (NA), some amino acid mutations modify binding sites of host antibodies from previous infections.
These mutations increase a virus's fitness by allowing the virus to escape existing antibodies in a process called antigenic drift (Figure 1).
Mutations in HA and NA create fitness trade-offs, where beneficial mutations facilitate antigenic drift against a background of deleterious mutations.

![](/images/blog/flu-forecasting-beneficial-and-deleterious-mutations-in-ha.png)
<span class="text-figure-legend">
Figure 1. HA accumulates beneficial mutations in its head domain (sites with color) that enable escape from antibody binding and deleterious mutations in its stalk domain (sites in gray) that reduce its ability to infect new host cells. The linear genome view on the left shows how sites from HA's head domain map to the three-dimensional structure of an HA trimer. The site highlighted in yellow reveals where different amino acid mutations allowed a flu virus to escape binding from existing antibodies in a human's polyclonal sera ([Lee et al. 2019](https://doi.org/10.1073/pnas.1806133115)). [Explore this figure interactively with dms-view.](https://dms-view.github.io/?markdown-url=https%3A%2F%2Fdms-view.github.io%2Fdata%2FIAV%2Flee2019mapping.md&data-url=https%3A%2F%2Fdms-view.github.io%2Fdata%2FIAV%2Fflu_dms-view.csv&condition=2009-age-53&site_metric=site-Positive+Differential+Selection&mutation_metric=mut-Positive+Differential+Selection&selected_sites=52%2C53%2C54%2C55%2C56%2C57%2C58%2C59%2C60%2C61%2C62%2C63%2C64%2C65%2C66%2C67%2C68%2C69%2C70%2C71%2C72%2C73%2C74%2C75%2C76%2C77%2C78%2C79%2C80%2C81%2C82%2C83%2C84%2C85%2C86%2C87%2C88%2C89%2C90%2C91%2C92%2C93%2C94%2C95%2C96%2C97%2C98%2C99%2C100%2C101%2C102%2C103%2C104%2C105%2C106%2C107%2C108%2C109%2C110%2C111%2C112%2C113%2C114%2C115%2C116%2C117%2C118%2C119%2C120%2C121%2C122%2C123%2C124%2C125%2C126%2C127%2C128%2C129%2C130%2C131%2C132%2C133%2C134%2C135%2C136%2C137%2C138%2C139%2C140%2C141%2C142%2C143%2C144%2C145%2C146%2C147%2C148%2C149%2C150%2C151%2C152%2C153%2C154%2C155%2C156%2C157%2C158%2C159%2C160%2C161%2C162%2C163%2C164%2C165%2C166%2C167%2C168%2C169%2C170%2C171%2C172%2C173%2C174%2C175%2C176%2C177%2C178%2C179%2C180%2C181%2C182%2C183%2C184%2C185%2C186%2C187%2C188%2C189%2C190%2C191%2C192%2C193%2C194%2C195%2C196%2C197%2C198%2C199%2C200%2C201%2C202%2C203%2C204%2C205%2C206%2C207%2C208%2C209%2C210%2C211%2C212%2C213%2C214%2C215%2C216%2C217%2C218%2C219%2C220%2C221%2C222%2C223%2C224%2C225%2C226%2C227%2C228%2C229%2C230%2C231%2C232%2C233%2C234%2C235%2C236%2C237%2C238%2C239%2C240%2C241%2C242%2C243%2C244%2C245%2C246%2C247%2C248%2C249%2C250%2C251%2C252%2C253%2C254%2C255%2C256%2C257%2C258%2C259%2C260%2C261%2C262%2C263%2C264%2C265%2C266%2C267%2C268%2C269%2C270%2C271%2C272%2C273%2C274%2C275%2C276&protein-data-color=&protein-other-color=&pdb-url=https%3A%2F%2Fdms-view.github.io%2Fdata%2FIAV%2F4O5N_trimer.pdb)
</span>

Viruses carrying beneficial mutations should grow exponentially relative to viruses lacking those mutations (Figure 2A).
Beneficial mutations on different genetic backgrounds will compete with each other in a process known as clonal interference (Figure 2B).
If beneficial mutations have large effects on fitness, the fitness of the genetic background where the beneficial mutations occur is less important for the success of the virus than the fitness effect of the beneficial mutations themselves (Figure 3).
If beneficial mutations have similar, smaller effects on fitness, a virus's overall fitness depends on the effect of the beneficial mutations and the relative fitness of its genetic background.
In this case, the ultimate success and fixation of these beneficial mutations depends, in part, on the number of deleterious mutations that already exist in the same genome (Figure 4).

![](/images/blog/flu-forecasting-exponential-growth-with-clonal-interference.png)
<span class="text-figure-legend">
Figure 2. Individuals in asexually reproducing populations tend to grow exponentially relative to their fitness (left). Normalization of frequencies to sum to 100% represents competition between viruses for hosts through clonal interference and reveals how exponentially growing viruses can decrease in frequency when their relative fitness is low (right).
</span>

![](/images/blog/flu-forecasting-fitness-landscape-by-mutation-effect-size.png)
<span class="text-figure-legend">
Figure 3. The shape of fitness landscapes depends, in part, on mutation effect sizes. Mutations with similar, smaller effects (blue and orange circles) produce a smooth Gaussian fitness distribution while mutations with large effect sizes (green, yellow, and purple circles) produce a more discrete fitness distribution. From Figure 1A and B of [Neher 2013](http://dx.doi.org/10.1146/annurev-ecolsys-110512-135920).
</span>

![](/images/blog/flu-forecasting-fixation-probability-as-function-of-background.png)
<span class="text-figure-legend">
Figure 4. The fixation probability of a beneficial mutation is a function of the mutation's genetic background. When mutations have similar, smaller effects, the fitness of a beneficial mutation's genetic background (red) contributes to the mutation's fixation probability (green). Mutations that ultimately fix originate from distribution given by the product of the background fitness and the fixation probability (blue). From Figure 2C of [Neher 2013](http://dx.doi.org/10.1146/annurev-ecolsys-110512-135920).
</span>

### What is predictable about flu evolution?

The expectations from population genetic theory described above and previous experimental work suggest that aspects of flu's evolution might be predictable.
Mutations in HA and NA that alter host antibody binding sites and enable viruses to reinfect hosts should be under strong positive selection.
We expect these strongly beneficial mutations to sweep through the global flu population at a rate that depends on the importance of their genetic background.
We also do not expect that every site in HA or NA will acquire beneficial mutations.
For example, fewer than a quarter of HA's 566 amino acid sites are under positive selection ([Bush et al. 1999](https://doi.org/10.1126/science.286.5446.1921)), have undergone rapid sweeps ([Shih et al. 2007](https://doi.org/10.1073/pnas.0701396104)), or contributed to antigenic drift ([Wolf et al. 2006](https://doi.org/10.1186/1745-6150-1-34)).
Importantly, not all of these sites contribute equally to antigenic drift ([Koel et al. 2013](https://doi.org/10.1126/science.1244730)).
Additionally, the complex and strong pressures of existing human immunity appear to constrain the space of antigenic phenotypes that viruses can explore at any given time ([Smith et al. 2004](https://doi.org/10.1126/science.1097211), [Bedford et al. 2012](https://doi.org/10.1186/1741-7007-10-38)).

Recently, researchers have built on this evidence to create formal predictive models of flu evolution.
[Neher et al. 2014](https://doi.org/10.7554/eLife.03568) used expectations from traveling wave models to define the "local branching index" (LBI), an estimate of viral fitness.
LBI assumes that most extant viruses descend from a highly fit ancestor in the recent past and uses patterns of rapid branching in phylogenies to identify putative fit ancestors (Figure 5).
[Neher et al. 2014](https://doi.org/10.7554/eLife.03568) showed that LBI could successfully identify individual ancestral nodes that were highly representative of the flu population one year in the future.

<div>
<img src="/images/blog/flu-forecasting-neher-2013-figure-5d.png" style="display: inline; margin: 0; width: 45%" />
<img src="/images/blog/flu-forecasting-h3n2-lbi-tree.png" style="display: inline; margin: 0; width: 50%" />
</div>
<span class="text-figure-legend">
Figure 5. Local branching index (LBI) estimates the fitness of viruses in a phylogeny. A) LBI assumes that mutations at the high fitness edge of a current population will seed future populations. From Figure 5D of [Neher 2013](http://dx.doi.org/10.1146/annurev-ecolsys-110512-135920). B) In practice, LBI tends to identify clusters of recently expanding populations, as shown in this seasonal influenza A/H3N2 phylogeny from Nextstrain. [Explore LBI values in the current Nextstrain phylogeny for A/H3N2](https://nextstrain.org/flu/seasonal/h3n2/ha/2y?c=lbi).
</span>

[Łuksza and Lässig 2014](https://doi.org/10.1038/nature13087) developed a mechanistic model to forecast flu evolution based on population genetic theory and previous experimental work.
This model assumed that flu viruses grow exponentially as a function of their fitness, compete with each other for hosts through clonal interference, and balance positive effects of mutations at sites previously associated with antigenic drift and deleterious effects of all other mutations.
Instead of predicting the most representative virus of the future population, [Łuksza and Lässig 2014](https://doi.org/10.1038/nature13087) explicitly predicted the future frequencies of entire clades.

Despite the success of these predictive models, other aspects of flu evolution complicate predictions.
When multiple beneficial mutations with large effects emerge in a population, the clonal interference between viruses reduces the probability of fixation for all mutations involved.
Flu populations also experience multiple bottlenecks in space and time including transmission between hosts, global circulation, and seasonality.
These bottlenecks reduce flu's effective population size and reduce the probability that beneficial mutations will sweep globally.
Finally, antigenic escape assays with polyclonal human sera suggest that successful viruses must accumulate multiple beneficial mutations of large effect to successfully evade the diversity of global host immunity ([Lee et al. 2019](https://doi.org/10.1073/pnas.1806133115)).

### Does flu evolve like we think it does?

In [Barrat-Charlaix et al. 2020](https://www.biorxiv.org/content/10.1101/2020.07.31.231100v1), we investigated the predictability of flu mutation frequencies.
We explicitly avoided modeling flu evolution and focused on an empirical account of long-term outcomes for mutation frequency trajectories.
We selected all available HA and NA sequences for flu lineages A/H3N2 and A/H1N1pdm, performed multiple sequence alignments per lineage and gene, binned sequences by month, and calculated the frequencies of mutations per site and month.
From these data, we constructed frequency trajectories of individual mutations that were rising in frequency from zero.
We expected these rising mutations to represent beneficial, large-effect mutations that would sweep through the global population as predicted by the population genetic theory described above.
By considering individual mutations, we effectively averaged the outcomes of these mutations across all genetic backgrounds.
We evaluated the outcomes of trajectories for mutations that had risen from 0% to approximately 30% global frequency and classified trajectories for mutations that fixed, died out, or persisted as polymorphisms.

<!-- Import Vega & Vega-Lite (does not have to be from CDN) -->
<script src="https://cdn.jsdelivr.net/npm/vega@5.15.0"></script>
<script src="https://cdn.jsdelivr.net/npm/vega-lite@4.15.0"></script>
<!-- Import vega-embed -->
<script src="https://cdn.jsdelivr.net/npm/vega-embed@6.11.1"></script>

<div style="width: 100%" id="mutation-trajectories"><img src="/images/blog/flu-forecasting-mutation-trajectories-static.png">
</div>
<span class="text-figure-legend">
Figure 6. Mutation trajectories for seasonal influenza A/H3N2 where mutations rose from a frequency of zero to approximately 30% frequency. Dashed horizontal lines represent thresholds for fixation (red) and loss (blue). Trajectory colors also indicate eventual fixation (red), loss (blue), or persistence as a polymorphism (black). The thick black dashed line indicates the average frequency of all trajectories shown. For the interactive figure, hover over individual trajectories to highlight their full extent and details about the current frequency of a given mutation at each timepoint. Use the radio buttons to filter trajectories by segment and outcome. (After Figure 1B in [Barrat-Charlaix et al 2020](https://www.biorxiv.org/content/10.1101/2020.07.31.231100v1).)
</span>

<script type="text/javascript">
var spec = "https://gist.githubusercontent.com/huddlej/b9269ca919bc105351e928258e791a8a/raw/7a0491fcd9a7b9b5fd83b2ca03a41b9e3b4b656b/frequency-trajectories-of-h3n2-mutations-interactive.json";
vegaEmbed('#mutation-trajectories', spec).then(function(result) {
// Access the Vega view instance (https://vega.github.io/vega/docs/api/view/) as result.view
}).catch(console.error);
</script>

The average trajectory of individual rising A/H3N2 mutations failed to rise toward fixation (Figure 6).
Instead, the future frequency of these mutations was no higher on average than their initial frequency.
We repeated this analysis for mutations with initial frequencies of 50% and 75% and for mutations in A/H1N1pdm and found nearly the same results.
From these results, we concluded that it is not possible to predict the short-term dynamics of individual mutations based solely on their recent success.

Next, we calculated the fixation probability of each mutation trajectory based on its initial frequency.
Surprisingly, we found that the fixation probabilities of A/H3N2 mutations were equal to their initial frequencies.
This pattern corresponds to what we expect for mutations evolving neutrally, where population genetic theory predicts that fixation probability is equal to current mutation frequency.
Generally, the pattern remained the same even when we binned mutations by high LBI, presence at epitope sites, multiple appearances of a mutation in a tree, geographic spread, or other potential metrics associated with high fitness.
We concluded that the recent success of rising mutations provides no information about their eventual fixation.

We tested whether we could explain these results by genetic linkage or clonal interference by simulating flu-like populations under these evolutionary constraints.
Mutation trajectories from simulated populations were more predictable than those from natural populations.
The closest our simulations came to matching the uncertainty of natural populations was when we dramatically increased the rate at which the fitness landscape of simulated populations changed.
These results suggested that we cannot explain the unpredictable nature of flu mutation trajectories by linkage or clonal interference alone.

Since flu mutation trajectories lacked "momentum" and LBI did not provide information about eventual fixation of mutations, we wondered whether we could identify the most representative sequence of future populations with a different metric.
The consensus sequence is provably the best predictor for a neutrally evolving population.
We found that the consensus sequence is often closer to the future population than the virus sequence with the highest LBI.
Indeed, we found that the top LBI virus was frequently similar to the consensus sequence and often identical.

Taken together, our results from this empirical analysis reveal that beneficial mutations of large effect do not predictably sweep through flu populations and fix.
Instead, the average outcome for any individual mutation resembles neutral evolution, despite the strong positive selection expected to act on these mutations.
Although simulations rule out clonal interference between large effect mutations as an explanation for these results, we cannot discount the role of multiple mutations of similar, smaller effects in the overall fitness of flu viruses and the fixation of "rafts" of co-evolving mutations.

### Can we forecast flu evolution?

In [Huddleston et al. 2020](https://doi.org/10.7554/eLife.60067), we built a modeling framework based on the approach described in [Łuksza and Lässig 2014](https://doi.org/10.1038/nature13087) to forecast flu A/H3N2 populations one year in advance.
We used this framework to predict the sequence composition of the future population, the frequency dynamics of clades, and the virus in the current population that most represented the future population.
As in [Barrat-Charlaix et al. 2020](https://www.biorxiv.org/content/10.1101/2020.07.31.231100v1) and [Łuksza and Lässig 2014](https://doi.org/10.1038/nature13087), we assumed that viruses grow exponentially as a function of their fitness and that viruses with similarly high fitness compete with each other under clonal interference.
In contrast to [Barrat-Charlaix et al. 2020](https://www.biorxiv.org/content/10.1101/2020.07.31.231100v1), we considered the fitness of complete amino acid haplotypes instead of individual mutations.

We estimated fitness with metrics based on HA sequences and experimental measurements of antigenic drift and functional constraint.
The sequence-based metrics included the epitope cross-immunity and mutational load estimates defined by [Łuksza and Lässig 2014](https://doi.org/10.1038/nature13087), LBI from [Neher et al. 2014](https://doi.org/10.7554/eLife.03568), and "delta frequency", a measure of recent change in clade frequency analogous to Barrat-Charlaix's rising mutations.
The experimental metrics included a cross-immunity measure based on hemagglutination inhibition (HI) assays ([Neher et al. 2016](https://doi.org/10.1073/pnas.1525578113)) and an estimate of functional constraint based on mutational preferences from deep mutational scanning experiments ([Lee et al. 2018](https://doi.org/10.1073/pnas.1806133115)).

We trained models based on each of these metrics independently and in relevant combinations of complementary metrics.
For each model, we fit coefficients per fitness metric that minimized the distance between the estimated and observed amino acid haplotype composition of the future (Figure 7).
These coefficients represent the effect of each metric on flu fitness.
As a control, we also calculated the distance to the future population for a "naive" model that assumed the future population is the same as the current population.
To test our framework, we simulated 40 years of evolution for flu-like populations with [SANTA-SIM](https://github.com/santa-dev/santa-sim) and fit models to these data.
After verifying our framework with simulated populations, we trained models for natural A/H3N2 populations using 25 years of historical data.
We tested the accuracy of each model by applying the coefficients from the training data to forecasts of new out-of-sample data from the last 5 years of A/H3N2 evolution.

![](/images/blog/flu-forecasting-distance-based-fitness-model.png)
<span class="text-figure-legend">
Figure 7. Schematic representation of the fitness model for simulated H3N2-like populations wherein the fitness of strains at timepoint _t_ determines the estimated frequency of strains with similar sequences one year in the future at timepoint _u_.
    Strains are colored by their amino acid sequence composition such that genetically similar strains have similar colors.
    A) Strains at timepoint _t_, x(_t_), are shown in their phylogenetic context and sized by their frequency at that timepoint.
    The estimated future population at timepoint _u_, x̂(_u_), is projected to the right with strains scaled in size by their projected frequency based on the known fitness of each simulated strain.
    B) The frequency trajectories of strains at timepoint _t_ to _u_ represent the predicted the growth of the dark blue strains to the detriment of the pink strains.
    C) Strains at timepoint _u_, x(_u_), are shown in the corresponding phylogeny for that timepoint and scaled by their frequency at that time.
    D) The observed frequency trajectories of strains at timepoint _u_ broadly recapitulate the model's forecasts while also revealing increased diversity of sequences at the future timepoint that the model could not anticipate, e.g. the emergence of the light blue cluster from within the successful dark blue cluster.
    Model coefficients minimize the earth mover's distance between amino acid sequences in the observed, x(_u_), and estimated, x̂(_u_), future populations across all training windows.
    (After Figure 1 in [Huddleston et al 2020](https://doi.org/10.7554/eLife.60067).)
</span>

We found that the most robust forecasts depended on a combined model of experimentally-informed antigenic drift and sequence-based mutational load.
Importantly, this model explicitly accounts for the benefits of antigenic drift and the costs of deleterious mutations.
This model also slightly outperformed the naive model in its estimation of future clade frequencies.
However, we found that the naive model often selected individual strains that were as close to the future population as the best biologically-informed model.
The naive model's estimated closest strain to the future is effectively the weighted average of the current population and conceptually similar to the consensus sequence of the population.
From these results, we concluded that the predictive gains of fitness models depend on the prediction target.

Surprisingly, the sequence-based metrics of epitope cross-immunity and delta frequency and the mutational preferences from DMS experiments had little predictive power.
These metrics failed to make accurate forecasts because of their dependence on a specific historical context.
For example, the original epitope cross-immunity metric ([Łuksza and Lässig 2014](https://doi.org/10.1038/nature13087)) depends on a predefined list of epitope sites that were originally identified in a retrospective study of flu sequences up through 2005 ([Shih et al. 2007](https://doi.org/10.1073/pnas.0701396104)).
This metric correspondingly failed to predict the future after 2005, suggesting that its previous success depended on inadvertently borrowing information from the future.
Similarly, the mutational preferences from DMS experiments measure effects of all single amino acid mutations to the genetic background of the virus A/Perth/16/2009.
The metric based on these preferences failed to predict the future after 2009, reflecting the strong dependence of these preferences on their original genetic background.
Both delta frequency and LBI suffered from overfitting to the training data, in a more general form of historical dependence.

### How do results from our two studies compare?

The two studies we have presented here use different approaches to analyze the same natural flu populations.
We completed these two studies mostly independently and have only now begun to reconcile their findings.
We were especially interested to understand how simulated populations from the two studies differed and whether the optimal predictor from [Barrat-Charlaix et al. 2020](https://www.biorxiv.org/content/10.1101/2020.07.31.231100v1) could also be an accurate fitness metric in the modeling framework from [Huddleston et al. 2020](https://doi.org/10.7554/eLife.60067).

Simulated populations play an important role in our two studies.
We generated these simulated data as a source of truth where we understand the population dynamics because we defined them.
In [Barrat-Charlaix et al. 2020](https://www.biorxiv.org/content/10.1101/2020.07.31.231100v1), the simulated binary populations from [ffpopsim](https://github.com/neherlab/ffpopsim) ([Zanini and Neher 2012](https://doi.org/10.1093/bioinformatics/bts633)) evolved under strong epistasis and immune escape pressure.
These populations showed us that mutation trajectories could be predictable under these population genetic constraints.
In [Huddleston et al. 2020](https://doi.org/10.7554/eLife.60067), the simulated nucleotide populations from [SANTA-SIM](https://github.com/santa-dev/santa-sim) ([Jariani et al. 2019](https://doi.org/10.1093/ve/vez003)) also evolved under strong epistasis, purifying selection, and an "exposure dependent" fitness function that mimics immune escape pressure.
We used these populations to confirm that our forecasting framework could accurately predict the composition of future populations.
Interestingly, when we inspected the predictability of the mutation trajectories for these simulated populations, we found that they resembled the weak predictability of natural H1N1pdm trajectories (Figure 8).
Despite the weak predictability of mutation trajectories from these simulated populations, we were able to forecast the composition of their future populations.
These results highlight the importance of using complete haplotypes to make predictions, as individual mutation trajectories remain difficult to predict.

<div id="fig:huddleston-simulated-trajectories-vs-h1n1pdm">
  <img src="/images/blog/flu-forecasting-mutation-trajectories-h1n1pdm.png" style="display: inline; margin: 0; margin-right: 1em; width: 45%" />
  <img src="/images/blog/flu-forecasting-rising_trajectories_f03.png" style="display: inline; margin: 0; width: 38%" />
</div>
<span class="text-figure-legend">
Figure 8. Comparison of rising trajectories for natural H1N1pdm trajectories from [Barrat-Charlaix et al. 2020](https://www.biorxiv.org/content/10.1101/2020.07.31.231100v1) and simulated flu-like populations from [Huddleston et al. 2020](https://doi.org/10.7554/eLife.60067). A) Rising trajectories for H1N1pdm mutations as reported in Figure S9 of [Barrat-Charlaix et al. 2020](https://www.biorxiv.org/content/10.1101/2020.07.31.231100v1). B) Rising trajectories for flu-like populations simulated with SANTA-SIM in [Huddleston et al. 2020](https://doi.org/10.7554/eLife.60067). Mutation trajectories from simulated populations resemble those of natural H1N1pdm mutations.
</span>

We also wanted to know whether the optimal metric from [Barrat-Charlaix et al. 2020](https://www.biorxiv.org/content/10.1101/2020.07.31.231100v1) for selecting a representative of the future, the consensus sequence of the current population, could make accurate forecasts in the modeling framework from [Huddleston et al. 2020](https://doi.org/10.7554/eLife.60067).
We noted above that the closest strain to the future selected by the naive model from [Huddleston et al. 2020](https://doi.org/10.7554/eLife.60067) is analogous to the consensus sequence of the current population.
One important difference is that the naive model has to select a previously sampled strain while the consensus sequence represents a hypothetical strain that may not exist in nature.
To understand whether the consensus sequence could also improve forecasts of the future population's haplotype composition, we developed a new fitness metric called the "distance from consensus".
For each timepoint in our forecasting analysis, we constructed the amino acid consensus sequence from all extant strains and calculated the pairwise distance between the consensus and each extant strain.
If the consensus sequence is the best representation of the future population, we expected the corresponding model's coefficients to be consistently negative.
This negative coefficient would have the effect of penalizing strains whose amino acid sequences diverged greatly from the consensus sequence.

![](/images/blog/flu-forecasting-distance-to-consensus-vs-lbi-and-hi.png)
<span class="text-figure-legend">
Figure 9. Model coefficients and distance to the future for LBI, HI antigenic novelty, and distance from consensus metrics.
    A) Coefficients are shown per validation timepoint (solid circles, N=23) with the mean +/- standard deviation in the top-left corner.
    For model testing, coefficients were fixed to their mean values from training/validation and applied to out-of-sample test data (open circles, N=8).
    B) Distances between projected and observed populations are shown per validation timepoint (solid black circles) or test timepoint (open black circles).
    The mean +/- standard deviation of distances per validation timepoint are shown in the top-left of each panel.
    Corresponding values per test timepoint are in the top-right.
    The naive model's distance to the future (light gray) was 6.40 +/- 1.36 AAs for validation timepoints and 6.82 +/- 1.74 AAs for test timepoints.
    The corresponding lower bounds on the estimated distance to the future (dark gray) were 2.60 +/- 0.89 AAs and 2.28 +/- 0.61 AAs.
</span>

We fit a model to this new metric using the same 25 years of historical A/H3N2 data described in [Huddleston et al. 2020](https://doi.org/10.7554/eLife.60067) and tested the robustness of the model on the last 5 years of A/H3N2 data.
We compared the performance of this model to models for LBI and experimental measures of antigenic drift (HI antigenic novelty).
For the first half of the training period, the distance to consensus metric received a coefficient of zero, meaning it did not improve forecasts over the naive model (Figure 9).
In the second half of the training period, the metric received a strong negative coefficient, as we expected.
When we applied the mean coefficient from the training period to out-of-sample data in the test period, we found that the distance from consensus metric outperformed LBI and performed only slightly worse than the antigenic drift metric.
These results support findings from both of our studies.
The consensus sequence is a more robust representative of the future than LBI, as shown in [Barrat-Charlaix et al. 2020](https://www.biorxiv.org/content/10.1101/2020.07.31.231100v1).
However, experimental measurements of antigenic drift still provide more information about the future population than sequence-only metrics, as shown in [Huddleston et al. 2020](https://doi.org/10.7554/eLife.60067).
We anticipate that this new distance from consensus metric could eventually replace the existing mutational load metric in a combined model with HI antigenic novelty.
This new combined model could potentially provide better estimates of functional constraint (by limiting changes from the consensus) and antigenic drift (by using experimental measures of antigenic drift phenotypes.)

### How have these results changed how we think about flu evolution?

In general, we found that the evolution of H3N2 flu populations remains difficult to predict.
The frequency dynamics and fixation probabilities of individual mutations resemble neutrally evolving alleles.
We can weakly predict the frequency dynamics of flu clades when we combine experimental and genetic data in models that account for antigenic drift and mutational load.
In the best case, we can use these same biologically-informed models to predict the sequence composition of future flu populations.
However, these complex fitness models do not always outperform simpler models, when predicting which individual virus is the most representative of the future population.
In [Barrat-Charlaix et al. 2020](https://www.biorxiv.org/content/10.1101/2020.07.31.231100v1), the consensus sequence of the current population was as close or closer to the future population than the sequence with the highest local branching index.
In [Huddleston et al. 2020](https://doi.org/10.7554/eLife.60067), a naive model estimated the single closest strain to the future nearly as well as the best biologically-informed models.

Successful flu predictions depend on the choice of prediction targets and fitness metrics.
Future prediction efforts should attempt to estimate the composition of future populations instead of future clade frequencies.
Fitness models should account for the genetic background of beneficial mutations and favor fitness metrics that are the least susceptible to model overfitting and historical contingency.
The benefits of considering the genetic background of individual mutations in HA suggest that considering the context of all genes should yield gains, too.
We need measures of antigenic drift from human antisera to complement current measures based on ferret antisera.
We may also improve forecast accuracy by accounting for flu's global migration patterns.
Finally, we should make the forecasting problem itself easier by embracing efforts to reduce the lag between vaccine composition decisions and distribution to the public.
