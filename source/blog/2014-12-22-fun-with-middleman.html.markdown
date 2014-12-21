---
title: Fun with git & Middleman
date: 2014-12-22 01:00 UTC
tags: code, meta
---

git post-receive hooks are fun. I use to use them at drop.io to trigger our Jenkins' builds. IIRC, the builds were triggered by hitting a specified URL.

If you, like me, are self-hosting a middleman blog as well as your own git repos you can add a post-receive hook to automatically generate the static site.

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

`rbenv` manages my Rubies for my deployment user (e.g. www-data). `rbenv` can be used to manage rubies system wide, however it is rightly discouraged. Since the git user is executing the receive hook, above (just a shell script) the user needs access to the `bundle` command. Just force it to work with above copying over the shim paths.

All for now. Middleman is nice.
