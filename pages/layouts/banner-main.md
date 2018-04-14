---
layout: page
title: Banner on main only
date: 2017-12-17
menuInclude: yes
menuTopTitle: Layout
menuSubs:
- title: Banner on main only
  index: 1
banner-position: main
secondary-column: left
tertiary-column: none
excerpt: The banner is placed above the main column only
---
The banner only appears above the main page. To create more space for the banner, the secondary column has been fixed to the left and the tertiary column has been disabled.

If the screen is too small, the title will be displayed over the icon.

Also note that there is less space available in the menubar this way, which could lead to overflow into the secondary column and disappearing on the right. In this mode, it is usually best to use "flex-start' for the theme properties "menubar-justify-content-medium/widest".

This illustrates the importance of choosing a proper column width in conjunction with the necessary menubar area.

The relevant YAML frontmatter for this page is:

    ---
    layout: page
    title: Banner on main only
    menuInclude: yes
    menuTopTitle: Layout
    menuSubs:
    - title: Banner on main only
      index: 1
    banner-position: main
    secondary-column: left
    tertiary-column: none
    ---