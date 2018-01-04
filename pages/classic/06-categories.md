---
layout: page
title: "Categories in classic"
date: 2017-12-15
menuInclude: yes
menuTopTitle: Classic
menuSubs:
- title: About Categories
  index: 6
excerpt: "An excerpt is used as the page description and can be up to 160 characters long..."
---

### Category pages

Category pages can be created with a little assistance of the web designer. To kick of the creation of a category page, create a page with the `layout` set to _category-page_. Also add a `title` that is set to the name of the category for which the page is created.

An example can be seen in the _pages/categories/classic.md_ file:

	---
	layout: category-page
	title: classic
	---

All other content in a category generation file is ignored.

### Category Menu Item

To enable the creation of a category menu item set the `site.data.setup.generate-categories-menu parameter` to _yes_. This will create a drop-down menu entry with the names of the categories for which pages were generated.

PS: The name of the categories menu item can be configured in `site.data.text-for.tCategories`.

### Category widget

As an alternative to the menu a widget is available that can be included somewhere to have access to the category pages.

### Widget or Menu

Using the categories menu is not possible when the drop-down menus are disabled (by setting `site.data.setup.drop-down-menu` to _no_). In that case the widget is the only way to access the categories pages.