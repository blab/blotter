---
layout: talk_reveal3
title: Real-time tracking of virus evolution
venue: Rocky Mountain Laboratories
event: Distinguished Scientist Seminar Series
author: Trevor Bedford
---

<!-- Total time of 60 minutes. Aim for 45-50 minutes to allow for questions, etc... -->

<section data-background-iframe="/talks/viz/gradient/">
	<h1 class="title">{{ page.title }}</h1>
	<br>&nbsp;<br>
	<p class="title">
	Trevor Bedford (@trvrb)
	<br>
	{{ page.date | date: "%-d %b %Y" }}
	<br>
	{{ page.event }}
	<br>
	{{ page.venue }}
	<br>&nbsp;<br>
	Slides at: bedford.io/talks
</section>

<!--- Background --->

<section>
	<h3>We work at the interface of virology, evolution and epidemiology</h3>
	<div>
		<img width="25%" style="padding:5px;" src="/images/talks/tile_ebola_virus.png">
		<img width="25%" style="padding:5px;" src="/images/talks/tile_ebola_tree.png">
		<img width="25%" style="padding:5px;" src="/images/talks/tile_ebola_map.png">
	</div>
	<div>
		<img width="25%" style="padding:5px;" src="/images/talks/tile_zika_virus.png">
		<img width="25%" style="padding:5px;" src="/images/talks/tile_zika_tree.png">
		<img width="25%" style="padding:5px;" src="/images/talks/tile_zika_map.png">
	</div>
</section>

<section>
	<h2>Sequencing to reconstruct pathogen spread</h2>
</section>

<section data-transition="slide-in none-out">
	<h3>Epidemic process</h3>
	<img class="stretch" src="/images/talks/infection_tree_1.png">
</section>

<section data-transition="none">
	<h3>Sample some individuals</h3>
	<img class="stretch" src="/images/talks/infection_tree_2.png">
</section>

<section data-transition="none">
	<h3>Sequence and determine phylogeny</h3>
	<img class="stretch" src="/images/talks/infection_tree_3b.png">
</section>

<section data-transition="none-in slide-out">
	<h3>Sequence and determine phylogeny</h3>
	<img class="stretch" src="/images/talks/infection_tree_4b.png">
</section>

<section>
	<h3>Localized Middle Eastern MERS-CoV phylogeny</h3>
	<img class="stretch" src="/images/talks/pathogen_phylogeny_mers.jpg">
	<div class="citation">
		<a href="http://www.thelancet.com/journals/lancet/article/PIIS0140-6736(13)61887-5/abstract">Cotten et al. 2013. Lancet.</a>
	</div>
</section>

<section>
	<h3>Regional West African Ebola phylogeny</h3>
	<img class="stretch" src="/images/talks/pathogen_phylogeny_ebola.png">
	<div class="citation">
		<a href="http://bedford.io/papers/park-ebola-transmission/">Park et al. 2015. Cell.</a>
	</div>
</section>

<section>
	<h3>Global influenza phylogeny</h3>
	<img class="stretch" src="/images/talks/pathogen_phylogeny_flu.png">
	<div class="citation">
		<a href="http://bedford.io/papers/bedford-global-circulation/">Bedford et al. 2015. Nature.</a>
	</div>
</section>

<section>
	<h2>Phylogenetic tracking has the capacity to revolutionize epidemiology</h2>
</section>

<section style="text-align: left;">
	<h3>Stuttering chains and animal-to-human spillover</h3>
	<p>
		&nbsp; &nbsp;
		<i>MERS spillover in the Arabian Peninsula</i>
	</p>
	<br>
	<h3>Epidemic growth and human-to-human transmission</h3>
	<p>
		&nbsp; &nbsp;
		<i>Ebola spread in West Africa</i>
	</p>
	<br>
	<h3>New methods for rapid phylogenetics and visualization</h3>
</section>

<!--- MERS-CoV --->

<section data-background="#000">
	<h1 class="title">MERS-CoV</h1>
</section>

<section style="text-align: left;">
	<h3>Middle East respiratory syndrome coronavirus (MERS-CoV)</h3>
	<p>
	<ul>
		<li>First identified in Saudi Arabia in 2012</li>
		<li>2229 confirmed cases to date and 791 deaths</li>
		<li>Camels thought to be the intermediate host</li>
		<li>30% of common colds due to endemic human coronaviruses</li>
	</ul>
	</p>
</section>

<section>
	<h3>Ongoing incidence, but lack of epidemic growth</h3>
	<img class="stretch" src="/images/talks/mers_who_timeseries.png">
</section>

<section>
	<h3>Cases localized to the Arabian Peninsula</h3>
	<img class="stretch" src="/images/talks/mers_map.jpg">
	<div class="citation">
		Rambaut. 2018.
	</div>
</section>

<section>
	<h3>Hypotheses for MERS transmission</h3>
	<img class="stretch" src="/images/talks/mers_network.png">
</section>

<section>
	<h3>MERS-CoV spillover at the camel-human interface</h3>
	<p class="smaller"><i>
	with <img width=40 class="img-avatar" src="/images/team/gytis-dudas.jpg"> Gytis Dudas, Luiz Carvalho and Andrew Rambaut
	</i></p>
	<div class="citation">
		<a href="/papers/dudas-mers-structure/">Dudas et al. 2018. eLife.</a>
	</div>
</section>

<section style="text-align: left;">
	<h3>Genomic dataset</h3>
	<p>
	<ul>
		<li>174 virus genomes from human infections</li>
		<li>100 virus genomes from camel infections</li>
	</ul>
	</p>
</section>

<section>
	<h3>MERS tree with host state</h3>
	<img class="stretch" src="/images/talks/mers_tree_ml.png">
	<div class="citation">
		<a href="/papers/dudas-mers-structure/">Dudas et al. 2018. eLife.</a>
	</div>
</section>

<section>
	<h3>Phylodynamic reconstruction of host state</h3>
	<img class="stretch" src="/images/talks/mers_tree.png">
	<div class="citation">
		<a href="/papers/dudas-mers-structure/">Dudas et al. 2018. eLife.</a>
	</div>
</section>

<section>
	<h3>Humans are transient hosts</h3>
	<img class="stretch" src="/images/talks/mers_exploded_tree.png">
	<div class="citation">
		<a href="/papers/dudas-mers-structure/">Dudas et al. 2018. eLife.</a>
	</div>
</section>

<section>
	<h3>Asymmetric migration rates</h3>
	<p>
	<ul>
		<li>56 (48–63) camel-to-human transmission events resulting in 174 sequenced human infections</li>
		<li>3 (0-12) human-to-camel transmission events</li>
	</ul>
	</p>
	<img class="stretch" src="/images/talks/mers_mig_rates.png">
	<div class="citation">
		<a href="/papers/dudas-mers-structure/">Dudas et al. 2018. eLife.</a>
	</div>
</section>

<section>
	<h3>Introduction events tend to occur between April and July</h3>
	<img class="stretch" src="/images/talks/mers_seasonality.png">
	<div class="citation">
		<a href="/papers/dudas-mers-structure/">Dudas et al. 2018. eLife.</a>
	</div>
</section>

<section data-background="/images/talks/mers_camel_calving.jpg">
	<h3 class="title">Dromedary camel calving occurs between Nov and Feb</h3>
	<br><p><br><p><br><p><br><p><br><p><br><p><br><p><br><p><br><p><br><p><br><p><br><p>
</section>

<section>
	<h3>Monte Carlo simulation</h3>
	<img class="stretch" src="/images/talks/mers_abc_method.png">
	<div class="citation">
		<a href="/papers/dudas-mers-structure/">Dudas et al. 2018. eLife.</a>
	</div>
</section>

<section>
	<h3>Phylogenetic clustering suggests $R_0$ below 1.0 and ~2000 human cases driven by ~600 introduction events</h3>
	<img class="stretch" src="/images/talks/mers_cluster_r0_combined.png">
	<div class="citation">
		<a href="/papers/dudas-mers-structure/">Dudas et al. 2018. eLife.</a>
	</div>
</section>

<section>
	<h3>Critically, no evidence of increasing cluster sizes through time</h3>
	<img class="stretch" src="/images/talks/mers_introductions.png">
	<div class="citation">
		<a href="/papers/dudas-mers-structure/">Dudas et al. 2018. eLife.</a>
	</div>
</section>

<section style="text-align: left;">
	<h3>Many other viruses that exhibit stuttering chains of human infection</h3>
	<p>
	<ul>
		<li>Nipah virus (fruit bats / pigs, Southeast Asia)</li>
		<li>Lassa virus (rodents, West Africa)</li>
		<li>Avian influenza (birds, mainland China)</li>
	</ul>
	</p>
</section>

<section>
	<h3>Sylvatic introductions of yellow fever virus show similar dynamics</h3>
	<img class="stretch" src="/images/talks/yellow_fever_tree.png">
	<div class="citation">
		Faria et al. 2018. Science.
	</div>
</section>

<!--- Ebola --->

<section data-background="#000">
	<h1 class="title">Ebola</h1>
</section>

<section>
	<h3>Ebola epidemic of 2014-2016 was unprecedented in scope</h3>
	<img class="stretch" data-src="/images/talks/ebola_historical_map.png">
</section>

<section>
	<h3>Ebola epidemic in West Africa</h3>
	<img class="stretch" data-src="/images/talks/ebola_timeseries.png">
</section>

<section>
	<h3>Ebola epidemic within Sierra Leone</h3>
	<img class="stretch" data-src="/images/talks/ebola_timeseries_sierra_leone.png">
	<div class="citation">
		<a href="http://ntncmch.github.io/ebola/">Camacho et al. 2015.</a>
	</div>
</section>

<section>
	<h3>Virus genomes reveal factors that spread and sustained the Ebola epidemic</h3>
	<p class="smaller"><i>
	with <img width=40 class="img-avatar" src="/images/team/gytis-dudas.jpg"> Gytis Dudas, Andrew Rambaut, Luiz Carvalho, Marc Suchard, Philippe Lemey, <br>
	and many others
	</i></p>
	<div class="citation">
		<a href="/papers/dudas-ebola-epidemic-spread/">Dudas et al. 2017. Nature.</a>
	</div>
</section>

<section>
	<h3>Sequencing of 1610 Ebola virus genomes collected during the 2013-2016 West African epidemic</h3>
	<img class="stretch" data-src="/images/talks/ebola_mig_sampling.png">
	<div class="citation">
		<a href="/papers/dudas-ebola-epidemic-spread/">Dudas et al. 2017. Nature.</a>
	</div>
</section>

<section>
	<h3>Sequenced genomes were representative of spatiotemporal diversity</h3>
	<img class="stretch" data-src="/images/talks/ebola_mig_sampling_corr.png">
	<div class="citation">
		<a href="/papers/dudas-ebola-epidemic-spread/">Dudas et al. 2017. Nature.</a>
	</div>
</section>

<section>
	<h3>Phylogenetic reconstruction of epidemic</h3>
	<img class="stretch" data-src="/images/talks/ebola_mig_tree.png">
	<div class="citation">
		<a href="/papers/dudas-ebola-epidemic-spread/">Dudas et al. 2017. Nature.</a>
	</div>
</section>

<section data-background="/images/talks/ebola_mig_tree.png">
</section>

<section>
	<h3>Tracking migration events</h3>
	<img class="stretch" data-src="/images/talks/ebola_mig_geo_tree.png">
	<div class="citation">
		<a href="/papers/dudas-ebola-epidemic-spread/">Dudas et al. 2017. Nature.</a>
	</div>
</section>

<section>
	<h3>Factors influencing migration rates</h3>
	<img class="stretch" data-src="/images/talks/ebola_mig_glm_factors.png">
	<div class="citation">
		<a href="/papers/dudas-ebola-epidemic-spread/">Dudas et al. 2017. Nature.</a>
	</div>
</section>

<section>
	<h3>Effect of borders on migration rates</h3>
	<img class="stretch" data-src="/images/talks/ebola_mig_border_effects.png">
	<div class="citation">
		<a href="/papers/dudas-ebola-epidemic-spread/">Dudas et al. 2017. Nature.</a>
	</div>
</section>

<section>
	<h3>Spatial structure at the country level</h3>
	<img class="stretch" data-src="/images/talks/ebola_mig_exploded_tree.png">
	<div class="citation">
		<a href="/papers/dudas-ebola-epidemic-spread/">Dudas et al. 2017. Nature.</a>
	</div>
</section>

<section>
	<h3>Substantial mixing at the regional level</h3>
	<img class="stretch" data-src="/images/talks/ebola_mig_exploded_tree_regions_sierra_leone.png">
	<div class="citation">
		<a href="/papers/dudas-ebola-epidemic-spread/">Dudas et al. 2017. Nature.</a>
	</div>
</section>

<section>
	<h3>Each introduction results in a minor outbreak</h3>
	<img class="stretch" data-src="/images/talks/ebola_mig_cluster_distributions.png">
	<div class="citation">
		<a href="/papers/dudas-ebola-epidemic-spread/">Dudas et al. 2017. Nature.</a>
	</div>
</section>

<section>
	<h3>Regional outbreaks due to multiple introductions</h3>
	<img class="stretch" data-src="/images/talks/ebola_mig_clusters_sierra_leone.png">
	<div class="citation">
		<a href="/papers/dudas-ebola-epidemic-spread/">Dudas et al. 2017. Nature.</a>
	</div>
</section>

<section>
	<h3>Regional outbreaks due to multiple introductions</h3>
	<img class="stretch" data-src="/images/talks/ebola_mig_stacked_epi_curve.png">
	<div class="citation">
		<a href="/papers/dudas-ebola-epidemic-spread/">Dudas et al. 2017. Nature.</a>
	</div>
</section>

<section>
	<h3>
		Ebola spread in West Africa followed a gravity model with moderate slowing by international borders,
		in which spread is driven by short-lived migratory clusters
	</h3>
</section>

<!--- Genomic Horizon --->

<section>
	<h3>The ability of single genes vs full genomes to resolve time and space in outbreak analysis</h3>
	<p class="smaller"><i>
	with <img width=40 class="img-avatar" src="/images/team/gytis-dudas.jpg"> Gytis Dudas
	</i></p>
	<div class="citation">
		<a href="/papers/dudas-genomic-horizon/">Dudas and Bedford. 2019. bioRxiv.</a>
	</div>
</section>

<section>
	<h3>Accuracy vs precision</h3>
	<img class="stretch" data-src="/images/talks/accuracy_vs_precision.png">
	<div class="citation">
		Schoene et al. 2013. Elements.
	</div>
</section>

<section style="text-align: left;">
	<p>Assess accuracy and precision through an out-of-sample prediction approach to model testing.
		Leave out 60/600 tips and predict time and location of these tips</p>
</section>

<section>
	<h3>Maximum likelihood divergence trees</h3>
	<img class="stretch" data-src="/images/talks/genomic_horizon_trees_div.png">
</section>

<section>
	<h3>BEAST time trees</h3>
	<img class="stretch" data-src="/images/talks/genomic_horizon_trees_time.png">
</section>

<section>
	<h3>Date reconstruction</h3>
	<img class="stretch" data-src="/images/talks/genomic_horizon_dates.png">
</section>

<section>
	<h3>Evolutionary rate reconstruction</h3>
	<img class="stretch" data-src="/images/talks/genomic_horizon_evol_rate.png">
</section>

<section>
	<h3>Location reconstruction</h3>
	<img class="stretch" data-src="/images/talks/genomic_horizon_locations.png">
</section>

<section>
	<h3>Estimates are generally well calibrated</h3>
	<img class="stretch" data-src="/images/talks/genomic_horizon_calibration.png">
</section>

<!--- Nextstrain --->

<section data-background="#000">
	<h1 class="title">Actionable inferences</h1>
</section>

<section>
	<h3>Genomic analyses were mostly done in a retrospective manner</h3>
	<img class="stretch" data-src="/images/talks/ebola_sampling_rugplots.png">
	<div class="citation">
		Dudas and Rambaut 2016
	</div>
</section>

<section style="text-align: left;">
	<h3>Key challenges to making genomic epidemiology actionable</h3>
	<p>
	<ul>
		<li>Timely analysis and sharing of results critical</li>
		<li>Dissemination must be scalable</li>
		<li>Integrate many data sources</li>
		<li>Results must be easily interpretable and queryable</li>
	</ul>
	</p>
</section>

<section>
	<h1>
		<span class="c1s">N</span><span class="c2s">e</span><span class="c3s">x</span><span class="c4s">t</span><span class="c5s">s</span><span class="c6s">t</span><span class="c7s">r</span><span class="c8s">a</span><span class="c9s">i</span><span class="c10s">n</span>
	</h1>
	<p>Project to conduct real-time molecular epidemiology and evolutionary analysis of emerging epidemics</p>
	<br>
	<p class="smaller"><i>
		with
		<img width=40 class="img-avatar" src="/images/team/richard-neher.jpg"> Richard Neher,
		<img width=40 class="img-avatar" src="/images/team/james-hadfield.jpg"> James Hadfield,
		<img width=40 class="img-avatar" src="/images/team/emma-hodcroft.jpg"> Emma Hodcroft,
		<img width=40 class="img-avatar" src="/images/team/thomas-sibley.jpg"> Tom Sibley,
		<br>
		<img width=40 class="img-avatar" src="/images/team/john-huddleston.jpg"> John Huddleston,
		<img width=40 class="img-avatar" src="/images/team/colin-megill.jpg"> Colin Megill,
		<img width=40 class="img-avatar" src="/images/team/sidney-bell.jpg"> Sidney Bell,
		<img width=40 class="img-avatar" src="/images/team/barney-potter.jpg"> Barney Potter,
		<br>
		<img width=40 class="img-avatar" src="/images/team/charlton-callender.jpg"> Charlton Callender
	</i></p>
</section>

<section>
	<h3>Nextstrain architecture</h3>
	<p>All code open source at <a class="off" href="https://github.com/nextstrain">github.com/nextstrain</a></p>
	<p>Two central aims: (1) <i>rapid and flexible phylodynamic analysis</i> and <br> (2) <i>interactive visualization</i></p>
	<img class="stretch" src="/images/talks/nextstrain_components.png">
</section>

<section style="text-align: left;">
	<h3>Rapid build pipeline for 1600 Ebola genomes</h3>
	<p>
	<ul>
		<li>Align with MAFFT <i>(34 min)</i></li>
		<li>Build ML tree with RAxML <i>(54 min)</i></li>
		<li>Temporally resolve tree and geographic ancestry with TreeTime <i>(16 min)</i></li>
		<li>Total pipeline <i>(1 hr 46 min)</i></li>
	</ul>
	</p>
</section>

<!-- <section>
	<div class="left" style="float:left;width:63%">
		<h3>Flexible pipelines constructed through command line modules</h3>
		<p>
		<ul>
			<li>Modules called via <code>augur filter</code>, <code>augur tree</code>, <code>augur traits</code>, etc...
			<li>Designed to be composable across pathogen builds</li>
			<li>Defined pipeline, making steps obvious</li>
			<li>Provides dependency graph for fast recomputation</li>
			<li>Pathogen-specific repos give users an obvious foundation to build from</li>
		</ul>
	</div>
	<div class="right" style="float:right;width:35%">
		<img data-src="/images/talks/nextstrain_augur_dag.png">
	</div>
</section> -->

<section style="text-align: left;">
	<h3>Nextstrain is two things</h3>
	<p>
	<ul>
		<li>a bioinformatics toolkit and visualization app, which can be used for a broad range of datasets</li>
		<li>a collection of real-time pathogen analyses kept up-to-date on the website nextstrain.org</i></li>
	</ul>
	</p>
</section>

<section data-background="#000">
	<h1 style="font-weight: 500;">
		<a href="http://nextstrain.org/" target="_blank">
			<span class="c1s">n</span><span class="c2s">e</span><span class="c3s">x</span><span class="c4s">t</span><span class="c5s">s</span><span class="c6s">t</span><span class="c7s">r</span><span class="c8s">a</span><span class="c9s">i</span><span class="c10s">n</span><span class="text-light-gray">.org</span>
		</a>
	</h1>
</section>

<section>
	<img class="stretch" src="/images/talks/gates_nextstrain_tweet.png">
</section>

<section data-background="/images/talks/nextstrain_in_sierra_leone.jpg">
	<h3 class="title">Rapid on-the-ground sequencing in Makeni, Sierra Leone</h3>
	<br><p><br><p><br><p><br><p><br><p><br><p><br><p><br><p><br><p><br><p><br><p><br><p>
</section>

<section style="text-align: left;">
	<h3>Newly released features</h3>
	<p>
	<ul>
		<li>Bacteria build pipelines using VCF rather than FASTA</li>
		<li>"Community" builds to promote frictionless sharing of results</li>
	</ul>
	</p>
</section>

<!-- Slide on current state of the DRC outbreak -->

<section>
	<h3>Ongoing Ebola epidemic worsening in North Kivu, DRC</h3>
	<img class="stretch" data-src="/images/talks/ebola_drc_timeseries_2019_05_07.png">
	<div class="citation">
		<a href="https://www.who.int/ebola/situation-reports/drc-2018/en/">WHO Sit Rep 40</a>
	</div>
</section>

<section>
	<h3>Genomic epidemiology conducted by INRB/USAMRIID</h3>
	<img class="stretch" data-src="/images/talks/nextstrain_ebola_drc_2019_03_27.png">
	<div class="citation">
		<a href="https://nextstrain.org/community/inrb-drc/ebola-nord-kivu">INRB/USAMRIID Nextstrain</a>
	</div>
</section>

<!-- Seattle Flu Study -->

<section data-background="#000">
	<h1 class="title">Moving forward</h1>
</section>

<section>
	<img class="stretch" src="/images/talks/seattle_flu_logo_y1.jpg">
	<div class="pull-right" style="vertical-align: bottom; display: table-cell;">
		<img width="9%" data-src="/images/talks/logo_bbi_vertical.png">
		&nbsp; &nbsp;
		<img width="11%" data-src="/images/talks/logo_seattle_childrens.png">
		&nbsp; &nbsp;
		<img width="8%" data-src="/images/talks/logo_fred_hutch_vertical.png">
		&nbsp; &nbsp;
		<img width="12%" data-src="/images/talks/logo_uw_medicine.png">
		&nbsp; &nbsp;
		<img width="11%" data-src="/images/talks/logo_audere.png">
	</div>
</section>

<section>
	<img class="stretch" src="/images/talks/seattle_flu_enrollment.png">
</section>

<section>
	<img class="stretch" src="/images/talks/seattle_flu_viz.png">
</section>

<section>
	<h3>Acknowledgements</h3>

	<p class="tiny"><b>Bedford Lab</b>:
		<img width=40 class="img-avatar" src="/images/team/allison-black.jpg"> Alli Black,
		<img width=40 class="img-avatar" src="/images/team/john-huddleston.jpg"> John Huddleston,
		<img width=40 class="img-avatar" src="/images/team/barney-potter.jpg"> Barney Potter,
		<img width=40 class="img-avatar" src="/images/team/james-hadfield.jpg"> James Hadfield,
		<br>
		<img width=40 class="img-avatar" src="/images/team/katie-kistler.jpg"> Katie Kistler,
		<img width=40 class="img-avatar" src="/images/team/louise-moncla.jpg"> Louise Moncla,
		<img width=40 class="img-avatar" src="/images/team/maya-lewinsohn.jpg"> Maya Lewinsohn,
		<img width=40 class="img-avatar" src="/images/team/thomas-sibley.jpg"> Thomas Sibley,
		<br>
		<img width=40 class="img-avatar" src="/images/team/jover-lee.jpg"> Jover Lee,
		<img width=40 class="img-avatar" src="/images/team/kairsten-fay.jpg"> Kairsten Fay,
		<img width=40 class="img-avatar" src="/images/team/misja-ilcisin.jpg"> Misja Ilcisin
	</p>

	<p class="tiny">
		<b>MERS</b>: Gytis Dudas, Andrew Rambaut, Luiz Carvalho
		&nbsp;
		<b>Ebola</b>: Gytis Dudas, Andrew Rambaut, Luiz Carvalho, Philippe Lemey,
		Marc Suchard, Andrew Tatem
		&nbsp;
		<b>Nextstrain</b>: Richard Neher, James Hadfield, Emma Hodcroft, Tom Sibley,
		John Huddleston, Sidney Bell, Barney Potter, Colin Megill, Charlton Callender
		&nbsp;
		<b>Seattle Flu Study</b>: Helen Chu, Michael Boeckh, Janet Englund, Michael Famulare,
		Barry Lutz, Debbie Nickerson, Mark Rieder, Lea Starita, Matthew Thompson, Jay Shendure, Jeris Bosua, Thomas Sibley,
		Louise Moncla,  Barney Potter, Jover Lee, Kairsten Fay, Misja Ilcisin, James Hadfield, Antonio Solano
	</p>

	<div class="pull-right" style="vertical-align: bottom; display: table-cell;">
		<img width="15%" data-src="/images/talks/logo_fred_hutch_vertical.png">
		&nbsp; &nbsp;
		<img width="11%" data-src="/images/talks/logo_pew.png">
		&nbsp; &nbsp;
		<img width="10%" data-src="/images/talks/logo_hhmi.jpg">
		&nbsp; &nbsp;
		<img width="12%" data-src="/images/talks/logo_wellcome_trust.jpg">
		&nbsp; &nbsp;
		<img width="10%" data-src="/images/talks/logo_nih.jpg">
		&nbsp; &nbsp;
		<img width="15%" data-src="/images/talks/logo_osp.jpg">
	</div>
</section>
