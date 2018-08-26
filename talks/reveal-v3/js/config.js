// Full list of configuration options available here:
// https://github.com/hakimel/reveal.js#configuration
Reveal.initialize({
	controls: false,
	progress: true,
	history: true,
	center: true,
	margin: 0.05,
	minScale: 0.1,
	maxScale: 5.0,
	width: 960, // 960 for 4/3, 1280 for 16/9 widescreen
	height: 720,

	theme: Reveal.getQueryHash().theme, // available themes are in /css/theme
	transition: Reveal.getQueryHash().transition || 'linear', // default/cube/page/concave/zoom/linear/fade/none

	// Parallax scrolling
	// parallaxBackgroundImage: 'https://s3.amazonaws.com/hakim-static/reveal-js/reveal-parallax-1.jpg',
	// parallaxBackgroundSize: '2100px 900px',

    math: {
        mathjax: 'https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.0/MathJax.js',
        config: 'TeX-AMS_HTML-full'  // See http://docs.mathjax.org/en/latest/config-files.html
    },

	// Optional libraries used to extend on reveal.js
	dependencies: [
		{ src: '../reveal-v3/lib/js/classList.js', condition: function() { return !document.body.classList; } },
		{ src: '../reveal-v3/plugin/markdown/marked.js', condition: function() { return !!document.querySelector( '[data-markdown]' ); } },
		{ src: '../reveal-v3/plugin/markdown/markdown.js', condition: function() { return !!document.querySelector( '[data-markdown]' ); } },
		{ src: '../reveal-v3/plugin/highlight/highlight.js', async: true, callback: function() { hljs.initHighlightingOnLoad(); } },
		{ src: '../reveal-v3/plugin/zoom-js/zoom.js', async: true, condition: function() { return !!document.body.classList; } },
		{ src: '../reveal-v3/plugin/notes/notes.js', async: true, condition: function() { return !!document.body.classList; } },
		{ src: '../reveal-v3/plugin/math/math.js', async: true }
	]
});
