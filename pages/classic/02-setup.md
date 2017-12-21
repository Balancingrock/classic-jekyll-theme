---
layout: page
title: Installation & Setup
date: 2017-12-20
tertiary-column: none
menuInclude: yes
menuTopTitle: Classic
menuSubs:
- title: Installation & Setup
  index: 2
excerpt: Installation and initial setup of the Classic Jekyll Theme
---
## Installation

The two most common ways of installing this theme is either using the git _clone_ command, or the gem-based approach.

Either way will work just fine.

If this theme is the basis for your own theme, then it seems prudent to use the _clone_ command. The cloned repository can then serve as the _master_ repository for your websites.

If the only purpose is to create a website, then the gem command is probably more comfortable.

This installation description presupposes that Jekyll is already installed. If not, please check out the [Jekyll](https://jekyllrb.com) website for more information.

No matter which installation method is chosen it is always prudent to make sure the Jekyll environment is up to date by updating the gems:

    gem update

### Using the Git clone command

#### Preparing for Installation

The theme uses a pluging called 'jekyll-data'.

This is installed with the command:

    gem install jekyll-data
    
At the time of writing jekyll-data is at version 1.0.0. The developper of jekyll-data has announced that all versions below 2.0.0 should be compatible.

#### Install

Create a new repository with:

    git clone https://github.com/Balancingrock/classic-jekyll-theme repository-name

of course the _repository-name_ should be replaced with the name of new local repository.

If the theme will be modified and used in more than one website, it may be advantageous to use the local repository only for theme related work. And use the local repository as the master repository for other website development. 

#### Setup

There is 1 change that _should_ be made first: in `_config.yml` __and__ `_sass/classic-jekyll-theme.scss` change the definition of `baseurl` from _"classic-jekyll-theme"_ to _""_.

Now start the jekyll server with the command:

    bundle exec jekyll serve

Next point your browser to: _localhost:4000_ and you will see the same site as this one, but hosted on your own computer.

If the `baseurl` was not changed, then point the browser to _localhost:4000/classic-jekyll-theme/index.html_.

To stop the jekyll server use the key combination: _CTRL-C_. 

It is recommended to explore the files `_config.yml`, `_data/setup.yml` and `_sass/classic-jekyll-theme.scss` before making changes to the theme itself. In general it is save to change any setting in these files and check the results of a modification in the browser. Note that any changes to `_config.yml` require a restart of the server as above. Changes to setup and classic-jekyll-theme can be seen bij saving the file and reloading the browser. Note that some changes may require a few seconds before the compilation is ready.

Always check the output of the compilation in the terminal (command line) window! Error messages will appear in that window, not the browser!

### Gem based

Install the theme with the command:

    gem install classic-jekyll-theme

## Setup

It is assumed that `root/_config.yml` is already configured correctly.

Classic has many parameters that can be configured. They reside in two files: `root/_data/_setup.yml` and `root/_sass/classic-jekyll-theme.scss`. Both of these files are documented, so please refer to these files for further instructions.

If your site is hosted at a path, the `$baseurl` value must not only be defined in `_config.yml` but also in classic-jekyll-theme.scss. For example if the full url is: http://balancingrock.nl/classic then the $baseurl must be set to _/classic_.
