---
layout: page
title: Menus in Classic
date: 2017-12-15
tertiary-column: none
menuInclude: yes
menuTopTitle: Classic
menuSubs:
- title: About Menu Items
  index: 5
excerpt: "An excerpt is used as the page description and can be up to 160 characters long..."
---
Menu items are created through YAML front matter, except for the `Home` and the `Categories` items.

### Home and Categories

The `Home` item is always present. The `Categories` item can be disabled by setting the parameter `site.data.setup.generate-categories-menu` to _no_.

The Categories menu item is automatically suppressed when the `site.data.setup.drop-down-menu` parameter is set to _no_. This is done because the categories menu itself has no landing page and hence category selection would not be possible. There is categories widget available to make the categories accessable from any other place. By default that widget is included in the secondary-column.

### Frontmatter

There are several front matter parameters that can be used to configure the menu.

To create a top menu item (shown in the menubar below the banner):

- __menuTopTitle__: This is the name of the item that will appear in the menubar when `menuInclude` is set to _yes_.
- __menuInclude__: Set to _yes_ to include the menu items that are defined in this front matter.
- __menuTopIndex__: A number that is used to sort the menu items from left to right. Lower numbers appear to the left of higher numbers. But the `Home` item always appears at the very left. When `Categories` are included, they always appear at the very right. Make sure not to use duplicate numbers as that will lead to odd effects.
- __menuLink__: Set to _no_ to disable the creation of a link from the menu item. This can be useful to create dividers or when a top item itself has no landing page. Note that when the drop down menu is disabled top items without links become unusable.

While the old syntax for creating sub-menu items still works, it is no longer mentioned here. Its use is discouraged.

To create sub menu items and sub-sub menu items use the new frontmatter:

- __menuSubs__: This is the initiation of the new frontmatter used to create sub and sub-sub menu items.

After the initiation use a `-` symbol to start a new sub menu item like this:

    ---
    ... other stuff
    menuTopTitle: Classic
    menuSubs:
    - title: sub-item-1
      index: 1
      link: yes
      url: http://example.com/anypage.html
      anchorId: id-of-anchored-html-item
	- title: "----"
	  index: 2
	  link: no
	- title: sub-item-3
	---

This example is discussed below.
	
#### menuTopTitle

The top title links the page to the proper top level menu item. It is mandatory, without it no sub menu item can be created.

Note that when the drop down menu is used there does not need to be a page for the top menu item itself. However without the drop down menu and without a page linked to the top title, the menu item would simply sit in the menubar without any connections. It is therefore recommended to always provide a landing page for the top title. Even if it just tells the user to "select a subject from the menu".

#### title

This is the only mandatory item, it is the text used for the sub menu item.

Unless overriden by other frontmatter it will have:

- a link to the page in which it is defined.
- the sub-menu item ordering is random, though often alphabetically (Seems to depends on the file system).
- the url will be the page url of the page in which it is created.
- no anchor id will be used.

#### index

This determines the ordering of the sub-menu items. Lower numbers will appear above higher numbers. Make sure not to use duplicate numbers as that will lead to odd effects. (i.e. always check the menu!)

#### link

By default _yes_ is assumed. This controls the creation of a link from the sub-menu item. It can be useful to have a separator sub-menu item without a link.

#### url

If another page (or even site) must be linked to a sub-menu item, this tag can be used.

#### anchorId

Use this to anchor the sub-menu item to a specific HTML element.

When using the banner position “top-fixed” (see `_data/_setup.yml`) be sure to set an appropriate value for the $anchor-top-fixed-offset-xxxxx properties in the classic-jekyll-theme.scss file. This will prevent the anchored item from appearing behind the banner area. 

### Sub-sub menu items

Sub-sub-menu items are created in the same way the sub-items are created, but using the `sub` parameter inside `menuSubs`:

    ---
    ... other stuff
    menuTopTitle: Classic
    menuSubs:
    - title: sub-item-1
      index: 1
      link: yes
      url: http://example.com/anypage.html
      anchorId: id-of-anchored-html-item
	- title: cattle
	  index: 2
	  link: no
	  sub:
	  - title: sub-sub-item-1
	    anchorId: horses
	  - title: sub-sub-item-2
	    anchorId: cows
	- title: sub-item-3
	---

This will create two sub-sub menu items under the _cattle_ entry.

For the sub-sub menu entries the same tags as for the sub-menus can be used. (`link`, `index`, `url` and `anchorId`)
