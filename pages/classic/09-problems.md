---
layout: page
title: Problems & Workarounds
date: 2018-02-01
tertiary-column: none
menuInclude: yes
menuTopTitle: Classic
menuSubs:
- title: Problems and workarounds
  index: 9
excerpt: A discussion of problems that might occur and possible work arounds
---
## Issue 16: Youtube-player widget shows video on top of banner for top-fixed banner layout.

Due to the way youtube videos are displayed it is not possible to use the youtube-player.html widget when the banner position is set to top-fixed in the setup.yml file.

To include youtube video's use the iframe directly like this:

~~~~
    <iframe src="https://www.youtube.com/embed/video-id" width="100px" height="56.25px"></iframe>
~~~~

Of course the width and height parameters should be scaled to whatever size is required. Multiples of the values given will result in a HD-aspect ratio.

If the youtube-player widget is used for `banner-position: top-fixed`, the site and videos will work as normal. The only problem is that on scrolling the video's may appear to float over the banner (and menubar).