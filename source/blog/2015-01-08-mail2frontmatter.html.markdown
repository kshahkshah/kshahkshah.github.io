---
title: Mail2FrontMatter
date: 2015-01-08 08:11 UTC
tags: code, meta
---

Back way when I had a really nice [little contained project](https://github.com/kshahkshah/Stream) that parsed incoming emails to what I called a 'stream'. It simply generated some thumbnails and posted them up on an endlessly scrollable blog for me on the fly. It worked nicely but I took it down for one reason or another.

At the same time in my previous post I was lamenting not having a few features of tumblr I liked, post queueing, social media distribution, email-to-blog, etc. So in my spare time I've been working on what I think would be a nice updated version of my stream project for this modern yet old-school statically generated site.

The components are:

* an incoming email parser, which writes blog-metadata and saves attachments
* a file system event monitor which pushes changes to git and triggers the static build process
* a responsive image (picturefill compatible) generator inside Middleman

I've put the first and very rough cut of these items [up on GitHub]([https://github.com/kshahkshah/Mail2FrontMatter])

It's called Mail2FrontMatter. It is not Middleman specific and it would be nice if I could maintain compatibility for both the Jekyll and MiddleMan communities.
