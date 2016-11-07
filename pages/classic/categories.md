---
layout: page
title: "Categories in classic"
date: 2016-11-04
menuInclude: yes
menuTitle: "About Categories"
subMenuFrom: Classic
menuIndex: 3
description: A description can be up to 156 characters long...
# end of description at 156 characters ----------| (last 3 chars will be replaced by '...' on overflow)
---

The "Categories" navigation menu is created automatically. However the website designer has to specify which categories must be included in the menu. This can be done by adding a page with the layout set to "category-page". This kicks off the creation of a page for the categorie specified in the `title` of that page's YAML matter.

The html content of that page will be ignored. An example can be seen in the `pages/categories/classic.md` file.