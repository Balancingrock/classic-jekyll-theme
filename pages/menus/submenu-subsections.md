---
layout: page
menuInclude: yes
menuLink: yes
menuTopTitle: Menus
menuSubs:
- title: Anchor example
  index: 10
  link: no
  sub:
  - title: Important
    anchorId: top
  - title: One
    anchorId: one
  - title: Two
    anchorId: two
  - title: Three
    anchorId: three
excerpt: "An excerpt is used as the page description and can be up to 160 characters long..."
---
{:.anchor}
#### Important {#top}

When using the banner position "top-fixed" (see `_data/_setup.yml`) be sure to set an appropriate value for the $anchor-top-fixed-offset-xxxxx properties in the classic-jekyll-theme.scss file. This will prevent the anchored item from appearing behind the banner area.

Beware that the $anchor-top-fixed-offset-xxxxx should be set to zero when the banner position is NOT set to "top-fixed".

The way to use anchors in markdown is as follows:

    ---
    layout: page
    menuInclude: yes
    menuTopTitle: Menus
    menuSubs:
    - title: Anchor example
      index: 10
      link: no
      sub:
      - title: Important
        anchorId: top
      - title: One
        anchorId: one
      - title: Two
        anchorId: two
      - title: Three
        anchorId: three
    ---
    {:.anchor}
    #### Important {#top}
    
    ... lot of text
	
    {:.anchor}
    #### Two {#two}
    
    ... more text (etc)


{:.anchor}
#### One {#one}

Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.

{:.anchor}
#### Two {#two}

Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.

{:.anchor}
#### Three {#three}

Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.