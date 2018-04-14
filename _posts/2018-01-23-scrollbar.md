---
layout: post
title:  Horizontal scrollbar for code sections
date:   2018-01-23
categories: classic
---
Added the following code to `_custom.scss` to add a horizontal scrollbar (issue #14) to the code sections:

    .highlight {
	    overflow-x: auto;
    }

Also updated the description for the use of the _--incremental_ option to the page on Jekyll -> Speed. In the Jekyll release 3.7 this option is very usefull to keep the development build of Jekyll down to a minimum. My own site needs only 1.5 seconds to rebuild a page that I am working on. This down from 70 seconds with Jekyll 3.6.
