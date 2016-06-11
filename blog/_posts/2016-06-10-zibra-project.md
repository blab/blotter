---
layout: post
title: Zika sequencing in Brazil (or Trevor does fieldwork)
link: http://zibraproject.github.io
author: Trevor Bedford
image: /images/blog/zibra_logo.png
---

I'm at the Rio airport now, heading home after 9 days in Brazil as part of the ground team of the [ZiBRA project](http://zibraproject.github.io/about/). As part of the team, I traveled from Natal to Recife along the northeastern coast collecting clinical samples for mobile Zika genome sequencing and analysis. This has been an illuminating experience and I'm grateful to [Nick](http://lab.loman.net/), [Nuno](http://evolve.zoo.ox.ac.uk/Evolve/Nuno_Faria.html), [Luiz](http://www.pgpat.ufba.br/docenteDetalhes.asp?id=FS0K6QkMSK) and the [rest of the team](http://zibraproject.github.io/people/) for inviting me to be part of this.

I truly believe that pathogen genome analysis can contribute significantly to epidemiological understanding and outbreak response. However, for this to work, genomes need to be produced and shared quickly enough so that epidemiological insights are *actionable*. [This was a major issue for much of the West African Ebola outbreak](/blog/scientific-publishing-practices/), limiting the utility of genomic approaches. The situation is somewhat better for the ongoing Zika epidemic in the Americas in that multiple groups are releasing a genome here and a genome there, but overall depth is still lacking with just 64 outbreak genomes available at this time. The ZiBRA project is an attempt to do real-time genomic surveillance of Zika in Brazil. If all goes according to plan, this project will rapidly provide a dataset for downstream analysis of Zika evolution and epidemiology, aiding understanding of virus spread and epidemic dynamics.

The trip was incredibly eye-opening for me in terms of the messy reality of viral surveillance and the even-more-messy details of Zika surveillance in Brazil. The basic pipeline for Zika surveillance in Brazil by the Ministry of Health (much like other viral surveillance systems) goes something like:

1. Patient presents at a clinic with symptoms consistent with infection (fever, rash, etc...).
2. The clinician sends a blood sample to the regional diagnostic laboratory (these are referred to as LACENs).
3. The LACEN extracts viral RNA and runs [RT-PCR](https://en.wikipedia.org/wiki/Real-time_polymerase_chain_reaction) to confirm viral presence in the sample.

The RT diagnostic is particularly important as clinical symptoms are difficult to distinguish between Zika, dengue and Chikungunya.  With the [road trip](http://zibraproject.github.io/roadtrip/), we were able to bring in reagents and expertise lacked by the LACENs and burn through a large number of banked clinical specimens to search for additional RT-positives. In some cases, we were able to confirm Zika diagnoses of pregnant women who presented the week before. We reported postive and negative RT diagnostics back to the LACENs. RT-positive samples were then brought forward for [PCR amplification](http://zibraproject.github.io/blog/multiplex-pcr-protocol/) and [MinION sequencing](http://zibraproject.github.io/blog/protocol-low-input-native-barcoding-protocol/).

I did help a bit with the lab-work, but I ended up mostly running point on metadata. As might be expected given the circumstances, the lab work was incredibly chaotic and I spent most of my time trying to keep sample data from *unraveling*. To keep epi metadata attached to a sample required maintaining a linkage between the numbers written from tube-to-tube-to-tube and the original LACEN ID. It also required digging through the LACEN diagnostic reports to pull in important epi metadata like date of collection and municipality of residence. I've never quite appreciated before the degree to which data wants to come apart if continual attention is not paid (proper data is an ordered state that is constantly under attack by entropic forces). I hope I've left the team with [systems in place to promote further metadata collection](http://zibraproject.github.io/blog/metadata-wrangling/).

We finished base calling and assembly on the first MinION runs on June 8, but realized they need resequencing to have good coverage. That said, we should be releasing genomes soon and hope to keep a flow of genomes going through the next few months. I'm super excited to be able to rapidly incorporate these genomes into [nextstrain.org](http://nextstrain.org/zika/) and help with tracking Zika evolution and epidemic spread.

<div class="row">
	<div class="col-sm-2">
		<a href="/images/blog/zibra_photos/img_1183.jpg">
			<img src="/images/blog/zibra_photos_thumbnails/img_1183.jpg">
		</a>
	</div>
	<div class="col-sm-2">
		<a href="/images/blog/zibra_photos/img_1190.jpg">
			<img src="/images/blog/zibra_photos_thumbnails/img_1190.jpg">
		</a>
	</div>
	<div class="col-sm-2">
		<a href="/images/blog/zibra_photos/img_1210.jpg">
			<img src="/images/blog/zibra_photos_thumbnails/img_1210.jpg">
		</a>
	</div>
	<div class="col-sm-2">
		<a href="/images/blog/zibra_photos/img_1266.jpg">
			<img src="/images/blog/zibra_photos_thumbnails/img_1266.jpg">
		</a>
	</div>
	<div class="col-sm-2">
		<a href="/images/blog/zibra_photos/img_1434.jpg">
			<img src="/images/blog/zibra_photos_thumbnails/img_1434.jpg">
		</a>
	</div>
	<div class="col-sm-2">
		<a href="/images/blog/zibra_photos/img_1481.jpg">
			<img src="/images/blog/zibra_photos_thumbnails/img_1481.jpg">
		</a>
	</div>	
</div>

<div class="bigspacer"></div>

<div class="row">
	<div class="col-sm-2">
		<a href="/images/blog/zibra_photos/img_1541.jpg">
			<img src="/images/blog/zibra_photos_thumbnails/img_1541.jpg">
		</a>
	</div>
	<div class="col-sm-2">
		<a href="/images/blog/zibra_photos/img_1577.jpg">
			<img src="/images/blog/zibra_photos_thumbnails/img_1577.jpg">
		</a>
	</div>
	<div class="col-sm-2">
		<a href="/images/blog/zibra_photos/img_1582.jpg">
			<img src="/images/blog/zibra_photos_thumbnails/img_1582.jpg">
		</a>
	</div>
	<div class="col-sm-2">
		<a href="/images/blog/zibra_photos/img_1606.jpg">
			<img src="/images/blog/zibra_photos_thumbnails/img_1606.jpg">
		</a>
	</div>
	<div class="col-sm-2">
		<a href="/images/blog/zibra_photos/img_1629.jpg">
			<img src="/images/blog/zibra_photos_thumbnails/img_1629.jpg">
		</a>
	</div>
	<div class="col-sm-2">
		<a href="/images/blog/zibra_photos/img_1632.jpg">
			<img src="/images/blog/zibra_photos_thumbnails/img_1632.jpg">
		</a>
	</div>
</div>

<div class="spacer"></div>
