---
layout: page
title: "Pages and Posts in classic"
date: 2017-12-15
menuInclude: yes
menuTopTitle: Classic
menuSubTitle: "About Pages & Posts"
menuSubIndex: 1
excerpt: "An excerpt is used as the page description and can be up to 160 characters long..."
---
Pages and Posts in Classic are created as is standard for Jekyll.

There are some additional front matter tags though:

- __comments__: When a disqus account is available, setting the `comments` to _yes_ will enable the disqus comment section.
- __secondary-column__: This is an override setting of the general parameter in `site.data.setup.secondary-column`. Set this to either _none_, _right_ or _left_ to affect the placing of the secondary column for this page/post only. Note that disabling the secondary column when the drop-down menu is disabled (i.e. `site.data.setup.drop-down-menu` is set to _no_) will result in the loss of the vertical menu.
- __tertiary-column__: This is an override setting of the general parameter in `site.data.setup.tertiary-column`. Set to either _none_ or _present_ to affect placing of the tertiary column for this page/post only.
- __secondary-column-content__: By default the content for the secondary column is taken from _\_includes/secondary-column.html_. Assigning it a different file here will override this default for this page/post only. However if the vertical menu is used (i.e. `site.data.setup.drop-down-menu` is set to _no_), it will remain visible at the top of the content of the secondary column.
- __tertiary-column-content__: By default the content for the tertiary column is taken from _\_includes/tertiary-column.html_. Assigning it a different file here will override this default for this page/post only.