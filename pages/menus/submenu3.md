---
layout: page
menuInclude: yes
menuLink: yes
menuTopTitle: Menus
menuSubs:
- title: Centralized
  index: 3
  sub:
  - title: Centralized - Subsub item 1
    index: 1
    url: /pages/menus/subsubmenu3-1.html
  - title: Centralized - Subsub item 2
    index: 2
    url: /pages/menus/subsubmenu3-2.html
excerpt: "An excerpt is used as the page description and can be up to 160 characters long..."
---
### Centralized

One way to create a subsub-menu structure is 'all in one place'. This file specifies the menu for all items below the section `Centralized`

#### Advantage

The subsub items of this sub-item do not need a menuSubs entry in their YAML frontmatter.

#### Disadvantage

The URL of the target must be specified

### YAML

The relevant YAML frontmatter for this page is:

    ---
    layout: page
    menuInclude: yes
    menuTopTitle: Menus
    menuSubs:
    - title: Centralized
      index: 3
      sub:
      - title: Centralized - item 1
        url: /pages/menus/subsubmenu3-1.html
      - title: Centralized - item 2
        url: /pages/menus/subsubmenu3-2.html
    ---

