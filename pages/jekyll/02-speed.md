---
layout: page
title: Compilation Speed
date: 2017-12-20
menuInclude: yes
menuTopTitle: Jekyll
menuSubs:
- title: Compilation speed
  index: 2
  sub:
  - title: Jekyll
    anchorId: jekyll
    index: 1
  - title: Classic
    anchorId: classic
    index: 2
tertiary-column: none
excerpt: Speed hints for Jekyll and Classic
---
{:.anchor}
## Jekyll Speed Hints {#jekyll}

Once the site starts to grow, compilation speed can become an issue. Jekyll is not all that fast, and Classic can slow down things even more.

The main culprit for Classic's performance is the creation of the menubar. More on that below. First some general speed hints about Jekyll.

### Knowledge is power

Turn on the profiler. That shows how much time is spend where.

    bundle exec jekyll serve --profile

will do the trick.

### Exclude content that must not be compiled

In the `_config.yml` exclude the directories that contains stuff that can be copied and stuff that simply does not need to be compiled.

Example:

    keep_files: [assets, icons]
    exclude: [README.md, raw-material]

Use `keep_files` to simply copy over those files. Use `exclude` to complete ignore the files.

### Incremental build

Jekyll offers an incremental build option. This option does not seem to work pre Jekyll 3.7

    bundle exec jekyll serve --incremental
    
Note that the _home_ page is not rebuild when using _incremental_. To see the changes that are made to a post or page, go to that post/page directly.

If you find any strange effects/artefacts, be sure to turn this off first.

### Build only the last post

This helps when writing a new post:

    bundle exec jekyll serve --limit_posts 1

However once the post is ready to be published, it is still necessary to recompile the entire site to ensure that all webpages properly reflect that a new post was added.

{:.anchor}
## Classic Speed Hints {#classic}

### Use fast-content-build

Setting `fast-content-build` (in _setup.yml_) to _yes_ will disable the creation of the menubar, the vertical menu, categories widget, older-posts widget and the recent-posts widget.

The resulting speed increase is rather large, but of course the created site is not ready for publication. Still it can be advantageous when creating content where the browser window is "reloaded" frequently to view the changes that were made.

To prevent accidentally leaving this setting active, this setting is always disregarded when `jekyll.environment` is set to _production_.

### Use a separate banner-area file

By default the menubar is generated in-line for each page/post. However the menubar generation process is the biggest time consumer when creating a page/post.

It is possible to create the menubar in a separate file and to load that file whenever necessary (using a simple line of Javascript). That increases the speed of compilation but degrades the user experience. The degradation is two fold: the browser must make multiple fetches which will take longer. However that is in our experience not really an issue. The bigger drawback is that the user is no longer given information about which menu item is selected.

With the in-line menubar the menu item for the currently visible page is highlighted.

When the menubar is generated in a separate file this is no longer possible.

If this is no problem, then the menubar (and banner) can be separated by setting the `use-separate-banner-menubar-file` parameter (in _setup.yml_) to 'yes'

Alternatively it is of course also possible to set this parameter to 'yes' during development and to 'no' for deployment.

