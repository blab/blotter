---
layout: talk_reveal3
title: Tracking and forecasting epidemic spread through viral genome sequencing
venue: BioHub
event: BioHub Seminar Series
author: Trevor Bedford
---

<!-- Total time of 60 minutes. Aim for 45-50 minutes to allow for questions, etc... -->

<section data-background-iframe="/talks/viz/gradient/">
	<h2 class="title">{{ page.title }}</h2>
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
	<h3>Outline</h3>
	<p>
	<ul>
		<li>Analysis of Ebola epidemic spread in West Africa</li>
		<li>Nextstrain platform for real-time phylodynamics</li>
		<li>Actionable genomic epidemiology for Ebola in the DRC</li>
		<li>Seasonal influenza evolution and vaccine strain selection</li>
		<li>Forecasting influenza strain turnover</li>
	</ul>
	</p>
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
		<span class="nobreak"><img width=40 class="img-avatar" src="/images/team/richard-neher.jpg"> Richard Neher,</span>
		<span class="nobreak"><img width=40 class="img-avatar" src="/images/team/james-hadfield.jpg"> James Hadfield,</span>
		<span class="nobreak"><img width=40 class="img-avatar" src="/images/team/emma-hodcroft.jpg"> Emma Hodcroft,</span>
		<span class="nobreak"><img width=40 class="img-avatar" src="/images/team/thomas-sibley.jpg"> Thomas Sibley,</span>
		<span class="nobreak"><img width=40 class="img-avatar" src="/images/team/john-huddleston.jpg"> John Huddleston,</span>
		<span class="nobreak"><img width=40 class="img-avatar" src="/images/team/louise-moncla.jpg"> Louise Moncla,</span>
		<span class="nobreak"><img width=40 class="img-avatar" src="/images/team/misja-ilcisin.jpg"> Misja Ilcisin,</span>
		<span class="nobreak"><img width=40 class="img-avatar" src="/images/team/kairsten-fay.jpg"> Kairsten Fay,</span>
		<span class="nobreak"><img width=40 class="img-avatar" src="/images/team/jover-lee.jpg"> Jover Lee,</span>
		<span class="nobreak"><img width=40 class="img-avatar" src="/images/team/allison-black.jpg"> Allison Black,</span>
		<span class="nobreak"><img width=40 class="img-avatar" src="/images/team/colin-megill.jpg"> Colin Megill,</span>
		<span class="nobreak"><img width=40 class="img-avatar" src="/images/team/sidney-bell.jpg"> Sidney Bell,</span>
		<span class="nobreak"><img width=40 class="img-avatar" src="/images/team/barney-potter.jpg"> Barney Potter,</span>
		<span class="nobreak"><img width=40 class="img-avatar" src="/images/team/charlton-callender.jpg"> Charlton Callender</span>
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

<section>
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
</section>

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

<section data-background="/images/talks/nextstrain_in_sierra_leone.jpg">
	<h3 class="title">Rapid on-the-ground sequencing in Makeni, Sierra Leone</h3>
	<br><p><br><p><br><p><br><p><br><p><br><p><br><p><br><p><br><p><br><p><br><p><br><p>
</section>

<section style="text-align: left;">
	<h3>"Community" builds to promote frictionless sharing of results</h3>
	<p>
	<ul>
		<li>Attempting to write us out of the picture</li>
		<li>JSON outputs uploaded to <code>github.com/czbiohub/dengue</code>, would be available at <code>nextstrain.org/community/czbiohub/dengue</code>
		<li>Used now for a variety of pathogens including Lassa in Nigeria, global RSV and cassava virus</li>
	</ul>
	</p>
</section>

<!-- DRC Ebola epidemic -->

<section data-background="#000">
	<h1 class="title">Ongoing DRC outbreak</h1>
</section>

<section>
	<h3>Genomic epidemiology applied to North Kivu Ebola outbreak</h3>
	<p class="smaller"><i>
		with Placide Mbala-Kingebeni, Eddy Kinganda Lusamaki, Catherine Pratt, Mike Wiley,
		James Hadfield, Allison Black, Jean-Jacques Muyembe Tamfum, Steve Ahuka-Mundeke,
		Daniel Mukadi, Gustavo Palacios, Amadou Sall, Ousmane Faye, Eric Delaporte,
		Martine Peeters and many others
	</i></p>
</section>

<section style="text-align: left;">
	<h3>Nextstrain is being used to track North Kivu outbreak</h3>
	<p>
	<ul>
		<li>Institut National de Recherche Biomédicale (INRB) is sequencing samples in Kinshasa</li>
		<li>Data and pipeline housed at <a href="https://github.com/inrb-drc/ebola-nord-kivu">github.com/inrb-drc/ebola-nord-kivu</a></li>
		<li>Resulting analyses are being deployed live to <a href="https://nextstrain.org/community/inrb-drc/ebola-nord-kivu">nextstrain.org/community/inrb-drc/ebola-nord-kivu</a></li>
	</ul>
	</p>
</section>

<section>
	<p>
		Allison Black (PhD student) and James Hadfield (postdoc) working with scientists at the INRB.
		Goal is to provide training in bioinformatics, Nextstrain and genomic epidemiology.
	</p>
	<img class="stretch" data-src="/images/talks/nextstrain_ebola_drc_photo.png">
</section>

<section>
	<h3>View of current genomic data</h3>
	<img class="stretch" data-src="/images/talks/nextstrain_ebola_drc_2019_09_10.png">
	<div class="citation">
		<a href="https://nextstrain.org/community/inrb-drc/ebola-nord-kivu">INRB Nextstrain</a>
	</div>
</section>

<section style="text-align: left;">
	<h3>Current dataset:</h3>
	<p>
	<ul>
		<li>376 full genomes sequenced (15% of confirmed cases)</li>
		<li>Most recent sequenced virus collected Sep 12 (4 weeks ago)</li>
	</ul>
	</p>
</section>

<section>
	<h3>Often (but not always) need <i>specific</i> actionable pieces of information rather than large-scale understanding.
	For Ebola outbreak response, I believe this needs to revolve around contact tracing.</h3>
</section>

<section>
	<h3>Superspreader event in June</h3>
	<img class="stretch" data-src="/images/talks/nextstrain_ebola_drc_2019_09_10_recent.png">
	<div class="citation">
		<a href="https://nextstrain.org/community/inrb-drc/ebola-nord-kivu">INRB Nextstrain</a>
	</div>
</section>

<section>
	<h3>Using narratives to walk through specific transmission inferences</h3>
	<p>
	<ul>
		<li>We're rolling out new <i>narratives</i> functionality in Nextstrain</li>
		<li>These are Markdown posts that allow you to pair narrative text to visualization state</li>
		<li>Made possible through an early decision to embed visualization state in URL</li>
		<li>Example narrative for Ebola in the DRC here: <a href="https://nextstrain.org/narratives/inrb-ebola-example-sit-rep">nextstrain.org/narratives/inrb-ebola-example-sit-rep</a></li>
	</ul>
	</p>
</section>

<!-- Nextflu -->

<section data-background="#000">
	<h1 class="title">Tracking seasonal influenza virus evolution</h1>
</section>


<section>
	<h3>Population turnover of A/H3N2 influenza is extremely rapid</h3>
	<img class="stretch" data-src="/images/talks/flu_h3n2_tree_beast.png">
</section>

<section>
	<h3>Clades emerge, die out and take over</h3>
	<img class="stretch" data-src="/images/talks/flu_h3n2_tree_clades.png">
</section>

<section>
	<h3>Clades show rapid turnover</h3>
	<img class="stretch" data-src="/images/talks/prediction_combined_trajectories.png">
</section>

<section>
	<h3>Dynamics driven by antigenic drift</h3>
	<img class="stretch" data-src="/images/talks/flu_h3n2_tree.png">
</section>

<section>
	<h3>Drift necessitates vaccine updates</h3>
	<img class="stretch" data-src="/images/talks/flu_h3n2_tree_vaccines.png">
</section>

<section>
	<h3>H3N2 vaccine updates occur every ~2 years</h3>
	<img class="stretch" data-src="/images/talks/flu_vaccine_updates_2019_10.png">
</section>

<section>
	<h3>Vaccine strain selection by WHO</h3>
	<img class="stretch" data-src="/images/talks/flu_vaccine_schedule.jpg">
</section>

<section style="text-align: left;">
	<h3>Working with Richard Neher, we decided to tackle this head on and build something that:</h3>
	<ol>
		<li>Charts behavior of specific strains</li>
		<li>Can be kept continually up to date</li>
	</ol>
</section>

<section>
	<h1>
		<span class="c2">N</span><span class="c3">e</span><span class="c4">x</span><span class="c5">t</span><span class="c6">f</span><span class="c7">l</span><span class="c8">u</span>
	</h1>
	<p>Project to provide a real-time view of the evolving influenza population</p>
	<p>Made possible by rapid and open sharing of WHO GISRS data through GISAID database</p>
</section>

<section>
	<h3>Current view of H3N2 from nextstrain.org/flu</h3>
	<img class="stretch" data-src="/images/talks/nextflu_sep2019_h3n2_tree_clades.png">
</section>

<section>
	<h3>Clade frequencies show recent rise of A1b/197R viruses</h3>
	<img class="stretch" data-src="/images/talks/nextflu_sep2019_h3n2_clade_frequencies.png">
</section>

<section>
	<h3>Local branching index (LBI) also points to A1b/197R as the most rapidly spreading clade</h3>
	<img class="stretch" data-src="/images/talks/nextflu_sep2019_h3n2_tree_lbi.png">
	<div class="citation">
		<a href="http://dx.doi.org/10.7554/eLife.03568">Neher et al. 2014. eLife.</a>
	</div>
</section>

<section>
	<h3>Serological assay data indicates largely similar antigenic phenotypes in A1b viruses</h3>
	<img class="stretch" data-src="/images/talks/nextflu_sep2019_h3n2_tree_titers.png">
</section>

<!-- Flu forecasting -->

<section>
	<h3>Forecasting seasonal influenza A/H3N2 evolution</h3>
	<p><i>
		with <img width=40 class="img-avatar" src="/images/team/john-huddleston.jpg"> John Huddleston
		and <img width=40 class="img-avatar" src="/images/team/richard-neher.jpg"> Richard Neher
	</i></p>
</section>

<section>
	<h3>Fitness models project strain frequencies</h3>
	<p>Future frequency $x_i(t+\Delta t)$ of strain $i$ derives from strain fitness $f_i$ and present day frequency $x_i(t)$, such that</p>
	<p>$$\hat{x}_i(t+\Delta t) = x_i(t) \, \mathrm{exp}(f_i \, \Delta t)$$</p>
	<p>
		Total strain frequencies at each timepoint are normalized.
		This captures clonal interference between competing lineages.
	</p>
	<img class="stretch" data-src="/images/talks/clonal_interferance.jpg">
	<div class="citation">
		<a href="http://www.nature.com/nature/journal/v507/n7490/full/nature13087.html">&#321;uksza and L&auml;ssig. 2014. Nature.</a>
	</div>
</section>

<section style="text-align: left;">
	<h3>Two inputs</h3>
	<p>
	<ul>
		<li>Estimate of present-day strain frequencies $x(t)$</li>
		<li>Estimate of present-day strain fitnesses $f$</li>
	</ul>
	</p>
</section>

<section>
	<h3>Strain frequency estimated via region-weighted KDE</h3>
	<img class="stretch" data-src="/images/talks/prediction_strain_frequencies.png">
</section>

<section>
	<h3>Strain fitness estimated from viral attributes</h3>
	<p>The fitness $f$ of strain $i$ is estimated as</p>
	<p>$$\hat{f}_i = \beta^\mathrm{A} \, f_i^\mathrm{A} + \beta^\mathrm{B} \, f_i^\mathrm{B} + \ldots$$</p>
	<p>where $f^A$, $f^B$, etc... are different standardized viral attributes and
		$\beta^A$, $\beta^B$, etc... coefficients are trained based on historical evolution</p>
	<br>
	<table>
		<thead>
			<tr>
				<th width="28%">Antigenic drift</th>
				<th width="38%">Intrinsic fitness</th>
				<th width="33%">Recent growth</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>epitope mutations</td>
				<td>non-epitope mutations</td>
				<td>local branching index</td>
			</tr>
			<tr>
				<td>HI titers</td>
				<td>DMS data (via Bloom lab)</td>
				<td>delta frequency</td>
			</tr>
		</tbody>
	</table>
</section>

<section>
	<h3>Future population depends on frequency and fitness</h3>
	<img class="stretch" data-src="/images/talks/prediction_strain_projection.png">
</section>

<section>
	<h3>Forecast assessed based on weighted distance match to observed future population</h3>
	<img class="stretch" data-src="/images/talks/prediction_weighted_distances_poor.png">
</section>

<section>
	<h3>Forecast assessed based on weighted distance match to observed future population</h3>
	<img class="stretch" data-src="/images/talks/prediction_weighted_distances_good.png">
</section>

<section>
	<h3>Train in 6-year sliding windows from 1995 to 2015 with most recent years held out as test</h3>
	<img class="stretch" data-src="/images/talks/prediction_cross_validation_strategy.png">
</section>

<section>
	<h3>Single predictors favor HI drift, non-epitope fitness and local branching index</h3>
	<img class="stretch" data-src="/images/talks/prediction_performance_single.png">
</section>

<section>
	<h3>Composite models suggest a combination of local branching index and non-epitope fitness</h3>
	<img class="stretch" data-src="/images/talks/prediction_performance_composite.png">
</section>

<section>
	<h3>Model successfully predicts clade growth</h3>
	<img class="stretch" data-src="/images/talks/prediction_validation_clade_growth.png">
</section>

<section>
	<h3>Best pick from model is generally close to best possible retrospective pick</h3>
	<img class="stretch" data-src="/images/talks/prediction_validation_ranking.png">
</section>

<section>
	<h3>Forecast from current virus population</h3>
	<img class="stretch" data-src="/images/talks/nextflu_sep2019_tree_forecast.png">
</section>

<!-- <section>
	<h3>Since March these two clades have begun to spread throughout the world</h3>
	<img class="stretch" data-src="/images/talks/nextflu_aug2019_6m_map_193_196.png">
</section> -->

<section>
	<h3>Predicted sequence match of circulating strains to future population</h3>
	<img class="stretch" data-src="/images/talks/nextflu_sep2019_tree_match.png">
</section>

<section>
	<h3>These forecasts are now rolled out live to nextstrain.org/flu</h3>
</section>

<!-- Dengue -->

<section>
	<h3>The same machinery can be applied to other viruses, like Sidney's work here on dengue</h3>
	<img class="stretch" data-src="/images/talks/dengue_serotype_fitness_model.png">
	<div class="citation">
		<a href="https://bedford.io/papers/bell-dengue-antigenic-dynamics/">Bell et al. 2019. eLife.</a>
	</div>
</section>

<!-- Closing -->

<section>
	<p>This work relies on rapid and open sharing of pathogen genomic data.</p>
	<p>
		All Nextstrain code is entirely open source and intended to be used by
		the community. We've been working hard on improving documentation at
		<a href="https://nextstrain.org/docs">nextstrain.org/docs</a>.
		You're most welcome to kick the tires.
	</p>
</section>

<section>
	<h3>Acknowledgements</h3>

	<p class="tiny"><b>Bedford Lab</b>:
		<img width=40 class="img-avatar" src="/images/team/allison-black.jpg"> Alli Black,
		<img width=40 class="img-avatar" src="/images/team/john-huddleston.jpg"> John Huddleston,
		<img width=40 class="img-avatar" src="/images/team/james-hadfield.jpg"> James Hadfield,
		<img width=40 class="img-avatar" src="/images/team/katie-kistler.jpg"> Katie Kistler,
		<br>
		<img width=40 class="img-avatar" src="/images/team/louise-moncla.jpg"> Louise Moncla,
		<img width=40 class="img-avatar" src="/images/team/maya-lewinsohn.jpg"> Maya Lewinsohn,
		<img width=40 class="img-avatar" src="/images/team/thomas-sibley.jpg"> Thomas Sibley,
		<img width=40 class="img-avatar" src="/images/team/jover-lee.jpg"> Jover Lee,
		<br>
		<img width=40 class="img-avatar" src="/images/team/kairsten-fay.jpg"> Kairsten Fay,
		<img width=40 class="img-avatar" src="/images/team/misja-ilcisin.jpg"> Misja Ilcisin
	</p>

	<p class="tiny">
		<b>Ebola in West Africa</b>: Gytis Dudas, Andrew Rambaut, Luiz Carvalho, Philippe Lemey,
		Marc Suchard, Andrew Tatem
		&nbsp;
		<b>Nextstrain</b>: Richard Neher, James Hadfield, Emma Hodcroft, Tom Sibley,
		John Huddleston, Sidney Bell, Barney Potter, Colin Megill, Charlton Callender
		&nbsp;
		<b>Ebola in DRC</b>: James Hadfield, Allison Black, Eddy Kinganda Lusamaki,
		Placide Mbala-Kingebeni, Catherine Pratt, Mike Wiley, Jean-Jacques Muyembe Tamfum,
		Steve Ahuka-Mundeke, Daniel Mukadi, Gustavo Palacios, Amadou Sall, Ousmane Faye,
		Eric Delaporte, Martine Peeters, David Blazes, Cecile Viboud, David Spiro
		&nbsp;
		<b>Seasonal flu</b>: WHO Global Influenza Surveillance Network, GISAID, John Huddleston,
		Richard Neher, Barney Potter, Dave Wentworth, Becky Garten
	</p>

	<div class="pull-right" style="vertical-align: bottom; display: table-cell;">
		<img width="14%" data-src="/images/talks/logo_fred_hutch_vertical.png">
		&nbsp; &nbsp;
		<img width="10%" data-src="/images/talks/logo_pew.png">
		&nbsp; &nbsp;
		<img width="16%" data-src="/images/talks/logo_bmgf.png">
		&nbsp; &nbsp;
		<img width="13%" data-src="/images/talks/logo_wellcome_trust.jpg">
		&nbsp; &nbsp;
		<img width="9%" data-src="/images/talks/logo_nih.jpg">
		&nbsp; &nbsp;
		<img width="14%" data-src="/images/talks/logo_osp.jpg">
	</div>
</section>
