---
layout: page
title: Terminology
date: 2017-12-15
tertiary-column: none
menuInclude: yes
menuTopTitle: Classic
menuSubs:
- title: Terminology
  index: 7
excerpt: The terminology used throughout the classic-jekyll-theme code base
---
When configuring the many options it is necessary to have a good view of the names used in the layout.

At the top level there are the following visible elements:

![top-level elements]({{ "/assets/img/top-level-layout.png" | relative_url }}){:.image-centered}

Of these the footer-separator and footer have no further internal decomposition.

The banner-area is the most complex as is displayed below. The column-panel is the main content panel and is divided into the following sub-components:

![column elements]({{ "/assets/img/column-panel-layout.png" | relative_url }}){:.image-centered}

The secondary-column and tertiary-column may be swapped in place, or disabled altogether.

The banner-area is build from the following components:

![column elements]({{ "/assets/img/banner-area-layout.png" | relative_url }}){:.image-centered}

Of these elements the menubar and menubar-bottom-separator may be made invisible by tapping or clicking the menu-symbol. The elements in the banner itself may be arranged differently, or may be absent.

All elements (except the primary-column) can be disabled.

It is also possible to insert an icon into the menubar and disable the banner. This means that the banner-area then only consist of the menubar and its separators (which can also be disabled).