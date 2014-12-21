---
title: Fun with git & Middleman
date: 2014-12-21 01:38 UTC
tags: code, meta
---

git post-receive hooks are fun. I use to use them at drop.io to trigger our Jenkins' builds. IIRC, the builds were triggered by hitting a specified URL. Today, I had a tiny battle installing one for this blog.

After [deciding to switch](http://kunalashah.com/blog/2014/11/25/new-blog.html) to self-hosting my blog and moving away from tumblr, I've been missing a few great tools that they provide and am seeking to replace.

First is simply posting a youtube or soundcloud link in, having it parsed and the embed code seamlessly generated for me. I've done a little non-exhaustive googling but haven't found an extension for middleman nor native or library support on top of any of the prevailing Markdown parsers/compilers yet either. I'm going to look into building this as an extension to [Redcarpet](https://github.com/vmg/redcarpet), one such parser.

Second is scheduling the release of my content. Tumblr allows me to specify when I'd like to post "1 day from now" or "tomorrow at 2PM". I'd really like to be able to do that again. I generally write in spurts, but would like to release things slowly. Hell it might save me from saying something stupid (within) one day. Automatic posting to social media would be nice as well, but that's a third, semi-related feature.

Long story short, if you like me are self-hosting a middleman blog as well as your own git repos you can add a post-receive hook to automatically generate the static site.

```sh
#!/bin/sh

export PATH=/home/USER/.rbenv/shims:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH

GIT_WORK_TREE=/path/to/www/
export GIT_WORK_TREE
git checkout -f

cd $GIT_WORK_TREE

bundle install

bundle exec middleman build
```

`rbenv` manages my Rubies for my deployment user (e.g. www-data). `rbenv` can be used to manage rubies system wide, however it is rightly discouraged. Since the git user is executing the receive hook, above (just a shell script) it needs access to the `bundle` command.

Just force it to work with above. Onwards to scheduling.

Update! Lovely, this feature already exists as I'd wanted to implement it - using YAML front matter, so I'm going to take a stab at the embedding instead.
