---
layout: page
menuInclude: yes
menuLink: yes
menuTopTitle: Menus
menuSubs:
- title: Decentralized
  index: 4
excerpt: "An excerpt is used as the page description and can be up to 160 characters long..."
---
### Decentralized

This example creates subsub menu structure by putting all menu creation information for each file in that same file.

#### Advantage

The subsub menu items do not need to specify a URL.
The information is localized which makes it easier to find the place where to make a change.

#### Disadvantage

Multiple files may need to be edited when the menu structure must be changed.

### YAML

The relevant YAML frontmatter for this page is:

    ---
    layout: page
    menuInclude: yes
    menuTopTitle: Menus
    menuSubs:
    - title: Decentralized
      index: 4
    ---

