---
title: On Personal Projects, Staying Sharp
date: '2013-03-14'
tags:
- hacking
- thoughts
---

<p>Originally posted by me to the NYC Engineers list. If you are an engineer and would like an invite, contact me @whistlerbrk.This was written very roughly and barely proofread, so please forgive any typos or grammatical errors.</p>
<p><span>So I&#8217;ve recently recommitted to late night college-style hacking. It&#8217;s been an incredibly productive month, and I&#8217;ve still managed to be healthy by going to the gym / eating well, save blowing out my back last Saturday on the slopes eek.</span></p>
<p><span>It&#8217;s a personal project that has kept me engaged, and it is honestly nothing too exciting or novel. A glorified content recommendation engine (uggh, so 2010 / pre-&#8216;curation&#8217; trend, amiright?) but let&#8217;s put that aside for now.</span></p>
<p><span>Anyway, here are some thoughts on running a personal project in no particular order.</span></p>
<p><strong><span>a. lean, iterative blah blah</span></strong></p>
<p><span>I made a good choice to get something up and running as quickly as possible. Not exactly a revolutionary thought but maybe something that we don&#8217;t do when it comes to a personal project. It is particularly helpful in my case since my app provides a daily email. Seeing that email is constant reminder that this works, but it could be better.</span></p>
<p><strong><span>b. It&#8217;s a good time to commit to improving your tool chain.</span></strong></p>
<p><span>As I mentioned in an earlier thread my tools from text editors to version control were showing signs of age. Late night hacking was incredibly conducive to taking the proper time to read documentation and commit to learning new tools and improving work flow. This for me included learning new bash tricks and scripting some more handy functions, changing and learning a new text editor (still no vim, haha, maybe next time).</span></p>
<p><strong><span>c. recommit to your build vs. buy analysis.</span></strong></p>
<p><span>Seriously, in this age of dynamic languages, and perhaps particularly as a Ruby programmer, it is so easy to just search for &#8220;#{service_name} #{language_name} api&#8221; or something to that effect, and try it out. </span></p>
<p><span>In the case of web services clients - there are *way way* too many HTTP libraries out there and your library of choice may have a dependency on one which you are not currently using. This just adds to memory bloat on shared hosting, where your personal project is likely to live.</span></p>
<p><span>Also, are you *really* using that library for everything it offers? Or are you just rocking a single call? Can you just use curl and/or Net HTTP? Then do that&#8230; hell, crib just that code from the client library which is probably licensed to allow you to do so.</span></p>
<p><strong><span>d. recommit to hacking</span></strong></p>
<p><span>Along that thought of cribbing is just hacking stuff together. Solving and working around silly things and not letting them being a blocker to getting to your next step. There are very few problems today that can&#8217;t be sidestepped.</span></p>
<p><strong><span>e. get people using it and write tests.</span></strong></p>
<p><span>I never use to write tests for personal projects, but since I have friends beta testing for me, it&#8217;d be kind of embarrassing if something broke. I don&#8217;t really have a choice but to test, the project quickly became complex enough to merit it.</span></p>
<p><strong>final thoughts on the technology forefront in the 90s vs. today</strong></p>
<p><span>Consider that for those of us coding in the mid to late 90&#8217;s the likelihood of us creating something novel was much higher than it is today.</span></p>
<p><span>Design didn&#8217;t matter because if something functionally worked (e.g Matt&#8217;s bulletin boards), it was well received regardless of design.</span></p>
<p><span>Today, the tools for creation are everywhere, anyone can make a site, and that&#8217;s swell. But it&#8217;s comprehensive design, experience, branding, content, and partnerships that make web go round now.</span></p>
<p><span>Consequently, engineers have been pushed back into their domain and it is harder and harder to create something novel from the ground up, specifically on the web.</span></p>
<p><span>That being said, I recognize that there is much in terms of specific engineering problems such as scalability, data science, mass storage vs. data access for us to do. </span></p>
<p><span>The opportunities, in my opinion, lie on the HCI (human computer interface) forefront. Multitouch has been here and real time object manipulation with things like Leap Motion / Kinect / GSpeak / whatever is on the verge.</span></p>
<p><span>The tools for creation on that forefront are still being developed and it where engineers have a great advantage in novel creation. All that being said, you will not get away with mid-90&#8217;s level web design on these new fronts.</span></p>
<p><em><span>tl;dr: late night hacking on personal projects is a good time for improvement as an engineer. Also, HCI is cool.</span></em></p>
