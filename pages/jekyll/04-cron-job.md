---
layout: page
title: "Cron jobs: create websites periodically"
date: 2018-02-05
menuInclude: yes
menuTopTitle: Jekyll
menuSubs:
- title: Create website from git periodically and automatically
  index: 4
tertiary-column: none
excerpt: How to set up the daily creation of a website with jekyll and git...
---
When maintaining a website it is common to want to add posts and pages on a regular basis to stimulate regular visits of users. A static website generator makes this harder, but with a little extra effort it is possible to show a new post or page on predefined dates. (Note that the classic-jekyll-theme is needed to have this feature apply to pages as well as posts. Standard Jekyll wil only do dated posts releases)

This is the workflow this example aims for:

- Create a page or post on a local machine.
- Verify that the layout of the site (on the local machine) is as desired.
- Check in the changes on the local machine into the local git repository.
- Push the local git to the git-server.

And have the website on the next day reflect the changes that were made. If changes were made for a future release date, they should only appear on and after the date for which they were written.

## Before we start

The method described here only works if we have control of the server.

It does not work for github hosted sites, though it should be possible to achieve the same result with Github if the cron job does not kick-off the jekyll-build process, but a git-push of an automatically generated file (to github).

The example is given for macOS, but should be easy to replicate for other platforms.

## The setup

The setup is simple: the machine that hosts the website has Jekyll and git-server installed on it. It can be the same machine that is used to create the content, but that is not necessary. One of the side benefits of this approach is that it is easy to update the website from anywhere in the world. Keep in mind though that it is important to use the same version of Jekyll and the ruby environment on all machines.

What we will do:

1. Create a git-server repository on the server that contains the (file for the) website.
1. Create a git working repository on the server that is used to generate the actual website.
1. Create a job on the server that checks out the website from the git-server repository into the working repository, compiles the website with Jekyll and then copies the content of `_site` to the website directory used by the server.

And that is all there is to it. Once this is done, we can update the website from any place that has `push` rights to the git-server repository.

To be clear, there are three website directories involved:

1. The server website directory. This is the directory that the webserver uses to serve the incoming HTTP requests.
1. The git-server website, this is a directory that contains all the files to build the website. It is identical in structure to the directory that is created by `jekyll new`.
1. And lastly a working directory (with git repository) that is used to create the files to be copied to the server website directory. This directory will be synchronised with the git-server directory when the website files are build.

## The steps

### Create git-server repository

I use macOS Xcode-Server to create a git-server repository.

Start 'Server' and select 'Xcode', then choose the 'Repositories' tab and create the repository.

If you don't have macOS-Server and Xcode-Server installed, please google "git server macOS" for hints about how to setup a git server on the mac.

For this example I will assume a site called 'mysite' and that the git-server repository has the same name.

### Create a directory to use as a working directory for the cron script

Any location will work, this example uses: `/Users/rien/Documents/Websites/mysite`. Of course your user name and site name will be different.

Goto the `/Websites` directory and create the git repository that will be used by the script.

    git clone <<path-to-repo>>

The <<path-to-repo>> should be the path to the git-server repository and end in 'mysite' or 'mysite.git'

This command also creates the directory `/mysite`

### Create the update script

This script is located at the user level (in this case: `Users/rien`) and lets call it `mysite-daily-update.script`.

    #! /bin/bash
    echo "$(date) start"
    cd /Users/rien/Documents/Websites/mysite
    echo "git pull"
    git pull origin
    echo "bundle exec jekyll build"
    rm Gemfile.lock
    JEKYLL_ENV=production /Users/rien/.rbenv/shims/bundle exec jekyll build
    echo "sync site"
    rsync -av _site/ /Library/Server/Web/Data/Sites/mysite
    echo "$(date) ready"

What happens:

- The bash shell is used
- The start time is logged to a console
- The working directory is changed to the directory where the cloned repository is
- The working repository is updated from the main site repository
- The Gemfile.lock is removed (I believe this is not really necessary, a leftover from experimenting)
- Jekyll compiles the site (the full path to `bundle` must be specified because the regular login profile is not executed in a cron job)
- The site is copied to the directory where the server expects it.
- The end time is logged to a console

The path in the `rsync` command must of course be the path to the directory where the website is hosted.

Note that when the website is being used the users may experience an inconsistent website for a very short time. For the type of updates that are targeted with this approach (page & post updates) this should not pose a problem. But when a website is completely redesigned it may be unacceptable. In that case a proper shutdown of the server is necessary before the rsync command is issued and a restart of the server afterwards.

Important: Make the script executable!

    chmod +x mysite-daily-update.script`

### Create the cron job specification

In the directory `~/Library/LaunchAgents` create a file with the name `com.mysite.plist`. Of course a different reverse-url notation will be needed for a different site.

This file should contain the following:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.mysite.daily-update</string>
    <key>StandardOutPath</key>
    <string>/Users/rien/mysite-daily-update.log</string>
    <key>StandardErrorPath</key>
    <string>/Users/rien/mysite-daily-update.error.log</string>
    <key>Program</key>
    <string>/Users/rien/mysite-daily-update.script</string>
    <key>StartCalendarInterval</key>
    <dict>
        <key>Hour</key>
        <integer>00</integer>
        <key>Minute</key>
        <integer>01</integer>
    </dict>
</dict>
</plist>
```

One thing to notice is that this specification also tells the OS to create an error and a log file. These files are written to the users root directory and can be examined for error messages.

The `Hour` and `Minute` keys and their values specify the time when the script should be executed. Take note of this because when you are in the habit of switching off the server at certain times, this may result in missing the site-generation for that day.

Btw, a good resource for the capabilities and configuration of the launchd can be found at: [http://www.launchd.info](http://www.launchd.info).

### Load the cron job (manually)

The job will be loaded automatically at startup. But right now you will need to load the job by hand:

    launchctl load ~/Library/LaunchAgents/com.mysite.plist

Most likely you will also want to test the script, that can be done with:

    launchctl start com.mysite.daily-update

The first couple of times, make sure to check for an error log in the `StandardErrorPath`. (Which in this example is the user home directory)

For completion, there are also the `unload` and `stop` options for `launchctl`. Only when the plist file is changed does one need to unload it.

## In closing

With the above information it should be possible to set up a daily re-generation of the site, and to automatically upload it to the appropriate server directory.

If a dedicated server is used and the git-server directory is accessable from outside, this is also a very convenient method to create pages and posts from outside your local domain. I.e. when travelling. It is even possible to use this to contribute to the site by multiple authors.