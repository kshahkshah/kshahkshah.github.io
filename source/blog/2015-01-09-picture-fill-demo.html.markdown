---
title: Picture Fill &amp; Screen Density
date: 2015-01-09 19:15 UTC
tags: code, learnings
---

I've been learning about responsive images recently. A good article on the genesis of this is available on [Eric Portis' blog here](http://ericportis.com/posts/2014/srcset-sizes/). I'd ran into the problem many designers have recently run into and it looks like the solutions to it are rather rapidly evolving. Scott Jehl has written on the evolving W3C standards and the polyfill, [Picturefill meant to address it](http://scottjehl.github.io/picturefill).

When design little applications like [Up On The Board](http://upontheboard.com/) I've often wanted to ask the browser about the pixel density of the user's monitor. It's a serious tough problem and while some people still appear to be going at it with user agent detection libraries/databases the standard has become media queries and [device-pixel ratio](http://www.html5rocks.com/en/mobile/high-dpi/).

Additionally, I really like a CSS3 feature I hadn't known about, [viewport percentage lengths](http://www.w3.org/TR/css3-values/#viewport-relative-lengths). Each vw is 1% of the initial containing blocks width. So 100vw is the entire width of the parent block. <strike>I could see this being very useful for scaling up headers on articles.</strike>. [This is the way to do it](http://fittextjs.com/), standalone code [here](https://github.com/adactio/FitText.js).

TL;DR I played around with the Picturefill polyfill to make responsive thumbnails [here](https://github.com/kshahkshah/picturefill-test).
