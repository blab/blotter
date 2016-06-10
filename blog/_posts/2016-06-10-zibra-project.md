---
layout: post
title: Zika sequencing in Brazil (or Trevor does fieldwork)
link: http://zibraproject.github.io
author: Trevor Bedford
image: /images/blog/zibra_logo.png
---

I'm at the Rio airport now, heading home after 9 days in Brazil as part of the ground team of the [ZiBRA project](http://zibraproject.github.io/about/). As part of the team, I traveled from Natal to Recife along the northeastern coast collecting clinical samples for mobile Zika genome sequencing and analysis. This is been an illuminating experience and I'm grateful to [Nick Loman](URL), [Nuno Faria](URL), [Luiz Alcantara](URL) and the [rest of the team](http://zibraproject.github.io/people/) for inviting me to be part of this.

I truly believe that genomic analysis can contribute significantly to epidemiological understanding and outbreak response. However, for this to work, genomes need to be produced and shared quickly enough so that epidemiological insights are *actionable*. [This was a major issue for much of the West African Ebola outbreak](/blog/scientific-publishing-practices/), limiting the utility of genomic approaches. The situation is somewhat better for the ongoing Zika epidemic in the Americas in that multiple groups are releasing a genome here and a genome there, but overall depth is still lacking with 64 genomes (from the current outbreak) available at this time. The ZiBRA project is an attempt to do real-time genomic surveillance of Zika in Brazil. If all goes according to plan, this project will rapidly provide a dataset for downstream analysis of Zika evolution and epidemiology, aiding understanding of virus spread and epidemic dynamics.

The trip was incredibly eye-opening for me in terms of in terms of the messy reality of viral surveillance and the even-more-messy details of Zika surveillance in Brazil. The basic pipeline for Zika surveillance in Brazil by the Ministry of Health is supposed to go something like:

1. Patient presents at a clinic with symptoms consistent with infection (fever, rash, etc...).
2. The clinician sends a blood sample to the regional diagnostic laboratory (these are referred to as LACENs).
3. The LACEN extracts viral RNA and runs [RT-PCR](URL) to confirm viral presence in the sample.
4. RT-positives are reported up the chain so that the Ministry of Health can get a handle of country-wide prevalence patterns.

However, the LACENs lack the necessary resources and expertise to make this pipeline work. We discovered 24 RT-positive samples out of ~300 specimens tested at the LACEN Natal. Everyone of these positive samples had been called negative by the LACEN. In fact, they had not confirmed a single case of Zika during 2016 in their catchment area of Rio Grande do Norte. This means that the regional authorities *have very little idea of Zika prevalence within the State*, especially as clinical symptoms are difficult to distinguish between Zika, dengue and chikungunya.

With the [road trip](http://zibraproject.github.io/roadtrip/), we were able to bring in reagents and expertise lacked by the LACENs and confirm Zika diagnoses, in some cases of pregnant women who presented the week before. RT-positive samples were then brought forward for [PCR amplification](http://zibraproject.github.io/blog/multiplex-pcr-protocol/) and [MinION sequencing](http://zibraproject.github.io/blog/protocol-low-input-native-barcoding-protocol/).

I did help a bit with the lab-work, but I ended up mostly running point on metadata. As might be expected given the circumstances, the lab work was incredibly chaotic and I spent most of my time trying to keep sample data from *unraveling*. To keep epi metadata attached to a sample required maintaining a linkage between the numbers written from tube-to-tube-to-tube and the original LACEN ID. It also required digging through the LACEN diagnostic reports to pull in important epi metadata like date of collection and municipality of residence. I've never quite appreciated before the degree to which data wants to *atomize* if not continual attention is not paid. (Proper data is an ordered state that constantly under attack by entropic forces).

We finished base calling and assembly on the first MinION runs on the 8th and realized the needed resequencing to have good coverage. That said, we should be releasing genomes soon and hope to keep a flow of genomes through the next few months. I'm super excited to be able to rapidly incorporate these genomes into [nextstrain.org](http://nextstrain.org/zika/) and to make proper use of the open science aspect of the project.

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
		<a href="/images/blog/zibra_photos/img_1198.jpg">
			<img src="/images/blog/zibra_photos_thumbnails/img_1198.jpg">
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
