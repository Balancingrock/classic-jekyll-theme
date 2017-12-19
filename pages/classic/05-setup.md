---
layout: page
title: Installation & Setup
date: 2017-12-15
tertiary-column: none
menuInclude: yes
menuTopTitle: Classic
menuSubs:
- title: Installation & Setup
  index: 5
excerpt: Setup of Classic Jekyll Theme
---
## Installation

Classic (like any theme) can be installed in different ways:

- As a gem
- Using git
- Zip

You can use any of these, but there are small differences.

### Gem based

Gem based is the preferred approach when more than 1 website must be maintained. It installs the theme for use in multiple projects. This is the standard way of installing themes for Jekyll.

Use the command `gem install classic-jekyll-theme` to install the theme. From there on, follow the normal procedures to create a new site and update the `_config.yml` file to use the theme.

The disadvantage from using this method is that the pages, assets and icon files are not are not available. To add these extra steps must be taken manually. Like -for example- also installing a single-use website using git or zip. 

### Using Git

There are two ways to do this, forking on github, or cloning to local.

For forking on github an account on github is needed. Refer to github for information on how to fork a repository.

To clone to local is simpel: `git clone https:github.com/Balancingrock/classic-jekyll-theme mysite` will create a local Jekyll website called `mysite`.

Change directory to the `mysite` directory and type `bundle exec jekyll serve`. Then point your browser to `localhost:4000`.

That is it.

Hint: As you get more experienced, it is possible that you want to change certain aspects of Classic. For that reason we found it advantageous to maintain 1 _master_ clone and make the theme adjustments in that master clone. Other websites -or the website- will then be set up from that master clone, again using the _git clone_ command. In this way changes to Classic and the content of the site are decoupled. This in turn makes it easier to upgrade Classic.

### Zip

This is very much like using the git clone command as written above.

Download the zip file from github and unpack it where you need it. Then run `bundle exec jekyll serve` in that directory. Point your browser at `localhost:4000` and voila!

## Setup

It is assumed that `root/_config.yml` is already configured correctly.

Classic has many parameters that can be configured. They reside in two files: `root/_data/_setup.yml` and `root/_sass/classic-jekyll-theme.scss`. Both of these files are documented, so please refer to these files for further instructions.

If your site is hosted at a path, the `$baseurl` value must not only be defined in `_config.yml` but also in classic-jekyll-theme.scss. For example if the full url is: http://balancingrock.nl/classic then the $baseurl must be set to _/classic_.

### Javascript

Javascript is used for google-analytics, disqus the cookie-warning and when using a separate banner-area file.

Only the separate banner-area file necessitates the loading of a javascipt library (googles JQuery).

Disabling these options (which is the default) allows your site to run completely without javascript.