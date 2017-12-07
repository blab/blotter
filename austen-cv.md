---
layout: cv
title: Austen Lamacraft's CV
---


# Austen Lamacraft
Theoretical Physicist


<div id="webaddress">
<i class="fa fa-envelope fa-2x"></i> <a href="mailto:austen.lamacraft@gmail.com">austen.lamacraft@gmail.com</a>
|
<i class="ai ai-google-scholar-square ai-2x"></i><a href="https://scholar.google.co.uk/citations?user=ERR4TF0AAAAJ&hl=en">Austen Lamacraft</a>
|
<i class="fa fa-github fa-2x"></i> <a href="https://github.com/AustenLamacraft">AustenLamacraft</a>
</div>

## Currently

`2012-`
__University of Cambridge__ Reader in Theoretical Physics, Department of Physics

## Employment


`2007-2012`
__University of Virginia__ Assistant Professor, Department of Physics (Tenure 2012)

`2005-2007`
__University of Oxford__ Postdoctoral Fellow, All Souls College

`2002-2005`
__Princeton University__ Robert H. Dicke Fellow, Department of Physics

`2001-2007`
__University of Cambridge__ Junior Reseach Fellow, Trinity College

`1998-1999`
__Barclays Capital__ Derivatives Trader, Interest Rate Exotics

## Education

`1999-2002`
__University of Cambridge__ PhD Theoretical Physics (Supervisor: Ben Simons)

`1997-1998`
__University of Cambridge__ MMath (Part III Mathematics, _Distinction_)

`1994-1997`
__University of Cambridge__ BA Natural Sciences (_First Class Honours_)


## Publications

<section>
{% for paper in site.categories.papers %}
    {% cycle 'add rows': '<div class="row">', nil, nil %}
      <p><code class="highlighter-rouge">{{ paper.year }}</code>
      {{ paper.title }}
      <br />
      <a class="off" href="http://dx.doi.org/{{ paper.doi }}">{{ paper.ref }}</a></p>
			<div class="bigspacer"></div>
			<div class="spacer"></div>

    {% cycle 'close rows': nil, nil, '</div>' %}
{% endfor %}
{% cycle 'close rows': nil, '</div>', '</div>' %}
</section>


## Technical skills

* Python
* LaTeX
* Git
* Machine learning
* Numerical computing


## Links

* <i class="fa fa-envelope"></i> <a href="mailto:ben@blm.io">ben@blm.io</a><br />
* <i class="fa fa-github"></i> <a href="http://github.com/blmoore">blmoore</a><br />
*  <i class="fa fa-twitter"></i> <a href="http://twitter.com/benjaminlmoore">benjaminlmoore</a><br />
*  <i class="fa fa-wikipedia"></i> <a href="https://en.wikipedia.org/wiki/User:Ben_Moore">Ben Moore</a><br />
*  <i class="fa fa-stack-overflow"></i> <a href="http://stackoverflow.com/users/1274516/blmoore">blmoore</a>
* <i class="fa fa-google"></i> <a href="http://scholar.google.com/citations?user=YMxsGpsAAAAJ">scholar</a>
