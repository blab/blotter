---
layout: talk_reveal3
title: Real-time molecular epidemiology and evolutionary analysis of emerging epidemics
venue: Fred Hutch
event: Comp Bio Faculty Seminar
author: Trevor Bedford
draft: true
---

<!-- Color ramp: ["#5097BA", "#5BA6A7", "#69B091", "#79B77D", "#8BBB6A", "#9EBE5A", "#B2BD4D", "#C4B945", "#D4B13F", "#DFA43B"] -->

<section data-background="#000000">
	<h2 class="title">{{ page.title }}</h2>
	<br>
	<p class="title">
	Trevor Bedford (@trvrb)
	<br>
	{{ page.date | date: "%-d %b %Y" }}
	<br>
	{{ page.event }}
	<br>
	{{ page.venue }}
</section>

<section data-background="#000000">
	<img width=100 src="/images/talks/giphy_virus.gif">
</section>

<section>
	<h1>
		<a href="http://nextflu.org">
			<span class="c2">n</span><span class="c3">e</span><span class="c4">x</span><span class="c5">t</span><span class="c6">f</span><span class="c7">l</span><span class="c8">u</span><span class="text-gray">.org</span>
		</a>
	</h1>
</section>

<section>
	<h2>Tracking epidemic spread through sequencing</h2>
</section>

<section data-background="#8BBB6A">
	<h2 class="title">Ebola</h2>
</section>

<section>
	<h2>Tracking geographic spread of the Ebola epidemic</h2>
	<p class="smaller"><i>
	with Gytis Dudas, Luiz Carvalho, Marc Suchard, Philippe Lemey, Andrew Rambaut <br> and many others
	</i></p>
	<div class="citation">
		<a href="/papers/dudas-ebola-epidemic-spread/">Dudas et al. 2016. bioRxiv.</a>
	</div>
</section>

<section>
	<h3>Dataset of 1610 Ebola virus genomes collected during the 2013-2016 epidemic</h3>
	<img class="stretch" data-src="/images/talks/ebola_mig_sampling.png">
</section>

<section>
	<h3>Initial emergence from Guéckédou</h3>
	<img class="stretch" data-src="/images/talks/ebola_mig_emergence.png">
</section>

<section>
	<h3>Epidemic spread</h3>
	<img class="stretch" data-src="/images/talks/ebola_mig_geo_tree.png">
</section>

<section>
	<h3>Spatial structure at the country level</h3>
	<img class="stretch" data-src="/images/talks/ebola_mig_exploded_tree.png">
</section>

<section>
	<h3>Substantial mixing at the regional level</h3>
	<img class="stretch" data-src="/images/talks/ebola_mig_exploded_tree_regions.png">
</section>

<section>
	<h3>Regional outbreaks due to multiple introductions</h3>
	<img class="stretch" data-src="/images/talks/ebola_mig_clusters.png">
</section>

<section>
	<h3>Each introduction results in a minor outbreak</h3>
	<img class="stretch" data-src="/images/talks/ebola_mig_cluster_distributions.png">
</section>

<section>
	<h3>Important analyses, let's make them more rapid and more automated</h3>
</section>

<section>
	<h3>Tracking epidemic spread in real-time:</h3>
	<h2>
		<a href="http://nextstrain.org/ebola/">
			<span class="text-gray">nextstrain.org/ebola/</span>
		</a>
	</h2>
</section>

<section data-background="/images/talks/nextstrain_in_sierra_leone.jpg">
	<h3 class="title">Rapid on-the-ground sequencing by Ian Goodfellow, Matt Cotten and colleagues</h3>
	<br><p><br><p><br><p><br><p><br><p><br><p><br><p><br><p><br><p><br><p><br><p><br><p>
</section>

<section>
	<h3>MinION sequencing in Guinea with Nick Loman, Josh Quick, Lauren Cowley and colleagues</h3>
	<img class="stretch" src="/images/talks/minion_ebola_sequencing.jpg">
	<div class="citation">
		<a href="http://www.nature.com/nature/journal/v530/n7589/full/nature16996.html">Quick et al 2016</a>
	</div>
</section>

<section data-background="#9EBE5A">
	<h2 class="title">Zika</h2>
</section>

<section>
	<h3>Single arrival into the Americas in early 2014</h3>
	<img class="stretch" src="/images/talks/zika_faria_tmrca.png">
	<div class="citation">
		<a href="http://science.sciencemag.org/content/early/2016/03/23/science.aaf5036">Faria et al 2016</a>
	</div>
</section>

<section>
	<h3>Analysis of ongoing evolution:</h3>
	<h2>
		<a href="http://nextstrain.org/zika/">
			<span class="text-gray">nextstrain.org/zika/</span>
		</a>
	</h2>
</section>

<section>
	<h3>ZiBRA: Project to do real-time sequencing of Zika in Brazil</h3>
	<p class="smaller"><i>
	with Nick Loman, Oli Pybus, Nuno Faria, Luiz Alcantara, Ester Cerdeira Sabino, Marcio Nunes, Josh Quick, Alli Black, Ingra Morales and many others
	</i></p>
	<a href="http://www.zibraproject.org/">
		<img class="stretch" src="/images/talks/zika_zibra_logo.png">
	</a>
</section>

<section>
	<h3>Road trip through northeast Brazil to collect samples and sequence</h3>
	<img class="stretch" src="/images/talks/zika_zibra_roadtrip_samples.jpg">
</section>

<section data-background="/images/talks/zika_zibra_bus.jpg">
</section>

<section data-background="/images/talks/zika_zibra_natal_lacen.jpg">
</section>

<section data-background="/images/talks/zika_zibra_trevor_in_lab.jpg">
</section>

<section data-background="/images/talks/zika_zibra_minion.jpg">
</section>

<section data-background="/images/talks/zika_zibra_heading_home.jpg">
</section>

<section data-background="/images/talks/zika_zibra_alli_in_brazil.jpg">
</section>

<section data-background="/images/talks/zika_zibra_mascot.jpg">
</section>

<section data-background="#000000">
	<h3 class="title">All this for 33 viral genomes</h3>
</section>

<section>
	<h2>Zika in Florida</h2>
	<p class="smaller"><i>
	with Kristian Andersen, Nathan Grubaugh, Oli Pybus, Pardis Sabeti, Sharon Isern, Jason Ladner, Gytis Dudas, Karthik Gangavarapu and many others
	</i></p>
</section>

<section data-background="/images/talks/zika_florida_miami_map.png">
</section>

<section>
	<h3>Multiple introductions and sustained transmission chains</h3>
</section>

<section>
	<h3>Nextstrain working as intended</h3>
</section>

<section>
	<h2><a href="https://github.com/nextstrain/fauna">Fauna</a></h2>
	<p>Rethink database of virus and titer data</p>
	<p class="smaller"><i>
	with Charlton Callender, Sidney Bell, Sarah Murata and Barney Potter
	</i></p>
</section>

<section>
	<h2><a href="https://github.com/nextstrain/augur">Augur</a></h2>
	<p>Build scrips to align sequences, build trees and annotate</p>
	<p class="smaller"><i>
	with Richard Neher, Sarah Murata, Sidney Bell and Barney Potter
	</i></p>
</section>

<section>
	<h2><a href="https://github.com/nextstrain/auspice">Auspice</a></h2>
	<p>React / D3 visualization of resulting trees</p>	
	<p class="smaller"><i>
	with Colin Megill and Richard Neher
	</i></p>
</section>

<section>
	<h3>Acknowledgements</h3>
	<br>
	<p class="smaller"><b>Ebola</b>: data producers, Gytis Dudas, Andrew Rambaut, Luiz Carvalho, Philipe Lemey, Marc Suchard, Richard Neher, Nick Loman, Ian Goodfellow, Paul Kellam, Danny Park, Kristian Andersen, Pardis Sabeti</p>

	<p class="smaller"><b>Zika</b>: data producers, Nick Loman, Kristian Andersen, Gytis Dudas, Nuno Faria, Andrew Rambaut, Oliver Pybus, Richard Neher, Charlton Callender, Allison Black, Luiz Alcantara and the rest of the ZiBRA team</p>

	<p class="smaller"><b>Nextstrain</b>: Richard Neher, Colin Megill, Charlton Callender, Sarah Murata, Sidney Bell</p>

	<div class="pull-right" style="vertical-align: bottom; display: table-cell;">
		<img width="40%" data-src="/images/talks/logo_fred_hutch.png">
		&nbsp;
		<img width="13%" data-src="/images/talks/logo_midas.jpg">
		&nbsp; &nbsp;
		<img width="13%" data-src="/images/talks/logo_pew.png">
		&nbsp; &nbsp;
		<img width="13%" data-src="/images/talks/logo_nih.jpg">
	</div>
</section>

<section data-background="#000000">
</section>
