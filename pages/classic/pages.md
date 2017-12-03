---
layout: page
title: "Pages in classic"
date: 2016-11-04
menuInclude: yes
menuTopTitle: Classic
menuSubTitle: "About Pages"
menuSubIndex: 2
excerpt: "An excerpt is used as the page description and can be up to 160 characters long..."
---

Pages in classic can be linked to from the navigation menu. To do so there are some additional YAML tags that help building the navigation menu.

- menuInclude: Set to "yes" to consider this page for a navigation bar menu item.
- menuLink: Set to 'no' to disable a link creation from the navigation bar to this page. However the menu title or subtitle will be included. This allows the ordering of menu items that do not have an associated page. The default behaviour assumes 'yes'. So not including this tag will create a link. Note: This allows ordering of top level menu items. For submenu items this probably only makes sense if some kind of "divider" must be shown. Otherwise showing a submenu item without a link will probably confuse users.
- menuTopTitle: The title of the menu item in the navigation bar. When used in conjunction with a menuSubTitle, this will be the title of the menu item to which this submenu item will be added in the drop down menu. 
- menuTopIndex: The place of the title within the menu bar. Lower numbers will be to the left of higher numbers. Be aware that the "Home" menu item will always be first and the "Categories" will always be last.
- menuSubTitle: The title of the submenu item in the drop down menu.
- menuSubIndex: The place of the submenu item within the dropdown menu. Lower numbers will go above higher numbers. This theme only sorts on menuIndex numbers, not on other properties.

For a consistent user experience in the narrow layout, it is recommended not to link pages to top level menu items if these menu items have a drop-down submenu.

Dropdown menus only go one level deep. If deeper nesting is necessary, use the vertical menu.
