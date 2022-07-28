---
title: Some Code Exercises
date: 2014-12-20 19:42 UTC
tags: code
---

I've put some [code exercises on GitHub](http://github.com/kshahkshah/exercises). They are the absolute basics; data structures for graphs and sorting algorithms. The stuff you would learn if you formally studied Computer Science - which I did not. In the end, a very worthwhile endeavour.

I'll admit frustration at the beginning - that is to say the first couple of days. Once I got the ball rolling, however, it felt good to work on and so I am happy to share. Specifically, the power of pathfinding algorithms like [A*](http://en.wikipedia.org/wiki/A*_search_algorithm) is truly awesome. It has such obvious abundance in a variety of real world applications that even a naive implementation is fun to play with. It made me think of the [turn based strategy games](http://en.wikipedia.org/wiki/Civilization_%28video_game%29) of my youth.

I was really looking forward to using the new JavaScript syntax available in [ES6's](https://github.com/lukehoban/es6features) to write these in. [However most implementations](http://kangax.github.io/compat-table/es6/), as of this writing, have only a subset of the proposed syntax implemented. Additionally I've caught wind of some disagreements on the spec itself. Hey, at least JavaScript is evolving again after [over a 10 year hiatus](http://en.wikipedia.org/wiki/ECMAScript#Versions) since a major release.

In the end I'm using [node.js/v8](https://github.com/joyent/node/wiki/ES6-%28a.k.a.-Harmony%29-Features-Implemented-in-V8-and-Available-in-Node) so I have trim little executables.

A final note to this post was realizing how useful the Struct and OpenStruct classes in Ruby truly are. They essentially function as tuples. I should be encouraged to use them and create my own arbitrary structures more willingly instead of forcing data into a specific pattern. After all the language creators built flexibility into their standard libraries for a reason.
