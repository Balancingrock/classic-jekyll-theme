---
layout: page
title: "Pages in classic"
date: 2016-11-04
menuInclude: yes
menuTopTitle: Classic
menuSubTitle: "About Pages"
menuSubIndex: 2
description: A description can be up to 156 characters long...
# end of description at 156 characters ----------| (last 3 chars will be replaced by '...' on overflow)
---

Pages in classic can be linked to from the navigation menu. To do so there are some additional YAML tags that help building the navigation menu.

- `menuInclude`: A page will only be included in the menu if set to `yes`.
- `menuTitle`: This will be the title of the menu item, or sub menu item that links to the post.
- `menuIndex`: A number that is used to sort the menu and sub menu sequence. For the menu, higher numbers go to the right of lower numbers. For sub menu items the higher numbers go below the lower numbers.
- `subMenuFrom`: The page will be linked from a submenu item below a menu item with this title.

There can be three different kinds of menu/submenu's:

1. A menu without submenu's. This is a direct link to a page. There will be no dropdown of submenu's. To create a navigation item without submenu's leave the `subMenuFrom` tag empty. See for example the "contact" menu item above.
2. A menu with submenu items but without a link from the menu item to a page. This happens if a page is included with a `subMenuFrom` tag value present, but where there is no page with a `menuTitle` of the same value. An example is the "Other" menu item above.
3. A menu item that links to a page and has submenu items that link to other pages. This happens when there are at least two pages, with one page containing the `menuTitle` value of the `subMenuFrom` value from the other. While this works fine it should be warned against from a user's perspective. When the website is seen in the 'narrow' layout the tap of a menu item will have different results for a menu with subitems as compared to a menu without subitems. This could be confusing towards new visitors.

Submenu's only go one level deep. If deeper nesting is necessary, send me a mail at: rien@balancingrock.nl