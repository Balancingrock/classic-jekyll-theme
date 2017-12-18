---
layout: page
menuInclude: yes
menuLink: yes
menuTopTitle: Menus
menuSubs:
- title: Sub Item 3
  index: 3
  sub:
  - title: sub-sub item 1
  - title: sub-sub item 2
excerpt: "An excerpt is used as the page description and can be up to 160 characters long..."
---
### Sub menu 3

The relevant YAML frontmatter for this page is:

    ---
    layout: page
    menuInclude: yes
    menuTopTitle: Menus
    menuSubs:
    - title: Sub Item 3
      index: 3
      sub:
      - title: sub-sub item 1
      - title: sub-sub item 2
    ---

Note that the sub-sub items don't have their own page, and hence they simply link to this page.