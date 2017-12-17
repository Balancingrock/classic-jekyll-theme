# Classic-Jekyll-Theme v2.0.0

Welcome to Classic-Jekyll-Theme. This theme centers around one of the most used website structures on the web. A banner, navigation menu (dropdown), (up to) three columns and a footer. The design is fully responsive for three different screen widths: wide, medium and narrow. It is probably best shown in an example:

Wide:

![wide-layout](http://balancingrock.nl/assets/img/classic-jekyll-theme-wide.png)

Medium:

![medium-left-layout](http://balancingrock.nl/assets/img/classic-jekyll-theme-medium-left.png)

Narrow:

![narrow-layout](http://balancingrock.nl/assets/img/classic-jekyll-theme-narrow.png)

The columns are called Primary (blue), Secondary (grey) and Tertiary (pink). In the above layouts the secondary column is on the left side. If it had been on the right side, the medium layout would have looked like this:

![medium-right-layout](http://balancingrock.nl/assets/img/classic-jekyll-theme-medium-right.png)

The menu bar (in yellow) is always deployed in the wide layout. In the medium and narrow layout the menu bar is shown in the deployed state. When not deployed, a menu-item symbol is shown in the banner that switches the menu between deployed and not.

An example screenshot:

![example](http://balancingrock.nl/assets/img/classic-jekyll-theme-screenshot-half.png)

Or visit a site using this theme: [365posts.com](http://www.365posts.com) or [Balancing Rock](http://www.balancingrock.nl)

Other features:

- __Secondary and Tertiary Columns__ can be specified by default and on a page by page basis for presence, location and content.

- __Navigation bar with drop-down menu__ is created automatically from the available pages when these have the proper YAML frontmatter. The navigation bar contains the top level menu items, while the submenu items show up as a drop-down menu when the cursor hovers over the corresponding menu item.

- __Category pages__ are created semi-automatically; the web designer has to identify the categories for inclusion, but the menu entry and category pages are created automatically.

- __Cookies policy__ for european users is included by default. It can be easily disabled for non-european websites though.

- __Language customization__ (not multi-language support!).

- __Icon__ support for an icon in the upper left corner of the site.

- __Background images__ and __Background color__ settings for major site elements.

- __Widgets__ the following widgets are included:
	- recent-posts: Shows a list of the N most recent posts (N is configurable).
	- social-media: Shows a list of social media sites with their links (Edit to add).
	- subscribe: Shows how a visitor can subscribe to your site (Edit to add).
	- youtube-player: Shows a youtube player that scales with the column it is used in (video id parameter).

- __Normalize.css__ As of release 1.5.0 [`normalize.css`](https://necolas.github.io/normalize.css/) is used directly instead of through the Jekyll adaptation. This allows for faster upgrade cycles.

- __Excerpt on pages__ Pages defining an explicit "excerpt" in their YAML will use this as the description for the header description meta tag (necessary for SEO purposes). Note that Jekyll does not generate excerpt information for pages, only posts. Hence it is necessary to define the excerpt as a YAML tag.

- __Blocked layout support__ Styles and includes support the creation of blocked layout (like product pages). To see an example of blocked pages, see the [http://balancingrock.nl](http://balancingrock.nl) home page.

- __Enable/disable banner__ The banner at the top of the page can be disabled.

- __Move banner/menu to main column__ The banner & navigation can be moved to within the main column only. The secondary and tertiary columns will then run right up to the top of the screen.

- __Split files for the menus__ It is possible to generate the menu file separate from the content file. While this may slow down the loading of the site a little, it is a huge speed up for site generation under Jekyll.

You can download it from [github](https://github.com/Balancingrock/classic-jekyll-theme) or install it with [rubygems](https://rubygems.org/gems/classic-jekyll-theme).

Like to help out?

You can support further development of this theme, or just say 'thank you' via paypal by donating to sales@balancingrock.nl or wire bitcoins to address: 1GacSREBxPy1yskLMc9de2nofNv2SNdwqH

Suggested donation for personal websites is the price of a good cup of coffee: $4

Suggested donation for commercial sites is the price of a good meal: $20

## Installation & setup

On MacOS the gems are located in: `Library/Ruby/Gems/<version>/gems/classic-jekyll-theme-<version>`. Replace the versions with the appropriate numbers (note: these are two different unrelated version numbers). These pages not only contain examples, but also some information about using the theme. Some of the steps below need the path to the gem, so make sure you know it (do 'bundle show classic-jekyll-theme').

Install the theme:

    $ sudo gem install classic-jekyll-theme

Create a new project:

	$ jekyll new great-site
	
Goto to the directory:

	$ cd great-site
	
Change in the Gemfile:

	From `gem "minima", "~> 2.0"` to `gem "classic-jekyll-theme"`

Change in the `_config.yml`:

	From `theme: minima` to `theme: classic-jekyll-theme`

Delete the file `about.md`:

	$ rm about.md

It is possible to start the jekyll server now:

	$ bundle exec jekyll serve
	
Then the site will show up at `localhost:4000`.

To add sample content that illustrates how pages and categories are implemented, copy the folder `pages` from the gem to the current project. To use the 'separate navbanner file' feature, also copy the `navbanner.md` from the gem to the project.

## Configuration

The theme is configured in:

- `_sass/classic-jekyll-theme.scss`: For the graphical elements.
- `_data/setup.yml`: For general layout and widget configuration.
- `_data/text-for.yml`: For language customization of the textual elements of the theme.

If it is necessary to change any of these settings, copy the file to your site (keeping the folder structure) and modify them as necessary.


### _sass/classic-jekyll-theme.scss

The default `main.scss` file has been emptied. Hence all CSS configuration is done in the theme sass file.

### setup.yml

The following values are configurable:

- secondary-column:

	Controls the default placing of the secondary column on either the `left` side, the `right` side or `none` at all. Note that the YAML front matter variable `secondary-column` can be used to override this value on a per-page basis.

	When the secondary column is present its contents is taken from the file: `_includes/secondary-column.html`. Note that this can be overriden by the YAML front matter variable `secondary-column-content`.

- tertiary-column:

	Controls the default presence of the tertiary column, either `present` or `none`. Note that the YAML front matter variable `tertiary-column` can be used to override this value on a per-page basis.

	When the tertiary column is present its contents is taken from the file: `_includes/tertiary-column.html`.  Note that this can be overriden by the YAML front matter variable `tertiary-column-content`.

- number-of-posts-on-home-page:

	By default set to 5, thus 5 posts will be shown in full on the home page.
	
- number-of-recent-posts-in-widget:

	The number of posts (titles) that will appear in the "Recent" widget.

- enable-cookies-policy:

	`yes` to enable the cookies warning, `no` to disable. The cookies warning is from [Silktide](http://silktide.com/cookieconsent), distributed under the MIT license.

- navbanner-position:

	`top`: The navigation banner will be placed over the entire site (all columns)
	`main`: The navigation banner will be placed at the top of the main column. Possibly next to or in between the secondary and tertiary columns.

- use-separate-navbanner:

	`yes`: Use a separate file for the navigation banner. This may cause a slight performance hit for browsers, but is a huge performance enhancement for the site generation process. Note that this option necessitates a JQuery library. By default the google JQuery library is loaded. Update the `_includes/head.html` if a different JQuery library should be used or if the library should be upgraded.
	`no`: Generate the navigation banner in-line into the posts and pages.

### text-for.yml

Some of the text elements in the theme can be translated with the following definitions:

	If a definition is absent, the default shown will be used.

	`tHome: Home` # Menu item
	
	`tPosts: Posts` # Title on home page
	
	`tCategories: Categories` # Menu item
	
	`tCategory: Category` # Title on categories page
	
	`tNoBlogpostFound: No blogposts found for this category` # Message on category page if no posts have been found
	
	`tMore: more` # Continuation text for abbreviated posts on a category page
	
	`tTags: Tags` # Tag label on category page
	
	`tRecent: Recent` # Title on recent posts widget
	
	`tSocialMediaResources: Social Media & Resources` # Part title of social media widget
	
	`tSubscribe: Subscribe` # Title of subscription widget

	`tUsesCookies: This site uses cookies` # Cookie warning message
	
	`tCookieOk: OK` # Text for OK button
	
	`tMoreInfo: More info` # More cookie info text

## Recommendation

Typically you will need to copy some files from the gem itself to the project (web site) directory. The most common files are:

- `_sass/classic-jekyll-theme.scss` for configuration.
- `_sass/classic/_normalize-override.scss` if site wide updates must be made to `_normalize.scss`.
- `_data/setup.yml` for configuration.
- `_data/text-for.yml` for configuration.
- `_includes/secondary-column.html` for the secondary column contents.
- `_includes/tertiary-column.html` for the tertiary column contents.
- `navbanner.md` for the navigation bar menu. This is mandatory if the `use-separate-navbanner` setting is used, optional when not. Hence its easier to always copy this file.

These files can be found in the gem directory. Try the command `bundle show classic-jekyll-theme` to see where the theme is located. When you copy these files, make sure they are in the same relative directory as in the gem itself.

Besides the above mentioned files you should avoid making changes to the files provided in the gem. The more changes you make, the more difficult it will become to upgrade. Instead of changing a file, include a new file that contains the stuff you want and include that file.

For example, if you need to add to the SASS files, create a new file and include that at the end of `_sass/classic-jekyll-theme.scss`.

## Creating Posts

Posting is done exactly like in the standard Jekyll environment.

## Creating a Category Page

A category page is a page that contains links to all posts published in that category.

To kick-off the creation of a category page, create a new page and include the following front matter:

	---
	layout: category-page
	title: classic
	---

The rest of the page can remain empty, it will be automatically created. The _category-page_ triggers the generation of a category page. The _title_ is the category the page is created for. The category (and thus also the _title_) are case sensitive.

## Creating Pages for the menu bar

To create a page that must be included in the menu bar, add the following front matter to that page:

	---
	...
	menuInclude: yes
	menuLink: yes
	menuTopTitle: Classic
	menuTopIndex: 2
	menuSubTitle: "About Pages"
	menuSubIndex: 4
	---

- menuInclude: Set to "yes" to consider this page for a navigation bar menu item.
- menuLink: Set to 'no' to disable a link creation from the navigation bar to this page. However the menu title or subtitle will be included. This allows the ordering of menu items that do not have an associated page. The default behaviour assumes 'yes'. So not including this tag will create a link. Note: This allows ordering of top level menu items. For submenu items this probably only makes sense if some kind of separator must be shown. Otherwise showing a submenu item without a link will probably confuse users.
- menuTopTitle: The title of the menu item in the navigation bar. When used in conjunction with a menuSubTitle, this will be the title of the menu item to which this submenu item will be added in the drop down menu.
- menuTopIndex: The place of the title within the menu bar. Lower numbers will be to the left of higher numbers. Be aware that the "Home" menu item will always be first and the "Categories" will always be last.
- menuSubTitle: The title of the submenu item in the drop down menu.
- menuSubIndex: The place of the submenu item within the dropdown menu. Lower numbers will go above higher numbers. This theme only sorts on menuIndex numbers, not on other properties.

For a consistent user experience in the narrow layout, it is recommended not to link pages to top level menu items if these menu items have a drop-down submenu.

### Alternate method for sub-menu's

In addition to the method described above there is another way to generate the sub-menu items. This method is especially handy if multiple sub-menu entries must be made for a single page using Anchor-Id's.
To create multiple sub menu entries:

    ---
    ...
    menuInclude: yes
    menuTopTitle: Classic
    menuSubs:
    -
       title: Sub Menu Title
       index: 3
       anchorId: id-of-html-tag
       url: /pages/menupage.html
    -
       title: '-------'
       index: 4
       link: no
    -
       title: Menu title below separator
       index: 5
       anchorId: second-anchor
    ...
    ---

The fields of the menuSubs YAML tag are interpreted as follows:

- title: The title of the submenu item in the drop down menu.
- index: The place of the submenu item within the dropdown menu. Lower numbers will go above higher numbers. This theme only sorts on menuIndex numbers, not on other properties.
- anchorId: The id of an HTML tag that the link will be made to. Do not include the '#' tag as this is gerenated automatically. I.e. the relative URL of the first entry above will be: `/pages/menupage.html#id-of-html-tag`.
- url: The url of the page to link to. If no url is specified it will link to the page this YAML matter is in.
- link: Set to 'no' to disable a link creation from the navigation bar to this page. However the submenu title will be included. The default behaviour assumes 'yes'. So not including this tag will create a link. Note: This probably only makes sense if some kind of "divider" must be shown. Otherwise showing a submenu item without a link will probably confuse users.

## Creating pages with custom second and tertiary columns

There are 4 YAML tags that control the custom placement and content of the secondary and tertiary columns:

    ---
    ...
    secondary-column: <'left'|'right'|'none'>
    secondary-column-content: <include-file>
    tertiary-column: <'present'|'none'>
    tertiary-column-content: <include-file>
    ---

These YAML variables can be used to override the default settings and provide custom content for the columns.

Notice that these settings take effect by their presence. Example: if a `secondary-column` YAML variable is present, it will prevent the global setting in the `_data/setup.yml` from having any effect.

## Specifying html header description meta tag content for pages

The "description" meta tag is possibly the most important SEO information that we can put in our pages. It shows up as the "description" for a link in search engines. Jekyll does support this as the "excerpt" tag in YAML front matter. And if the "excerpt" is not defined, Jekyll will grab the first part of the post as its description. However, for pages there was no such support. As of verion 1.5.2 this theme adds a limited form of this support. If a page defines an excerpt in its YAML front matter, that excerpt information will be used as the information in a description meta tag.

	---
	...
	excerpt: "Up to 160 characters can be used to provide a text for the description meta tag"
	---

Note that the "excerpt_separator" does *not* work on pages, only posts.

## Editing the secondary and tertiary columns

The prime column is populated by the 'normal' pages and posts. The secondary and tertiary columns have a fixed content that is created by directly editing the `_include/secondary-column.html` and `_include/tertiary-column.html`. These files must be copied from the gem dictionary to the directory with the jekyll files for the website at the path `_include`.

Documentation for the widgets is included in the widget files themselves. The are located in the gem directory at `_includes/widgets/`.

## History

Release 1.8.0

- Allow banner area to be removed.
- Allow banner & menu area to be placed at the top of the main column only.
- Added controls for setting the top and bottom free room of the column dividers.

Release 1.8.1

- Bugfix: sites not hosted at the domain root would have the wrong 'home' link.

Release 1.8.2

- Quickfix for screwup in 1.8.1

Release 1.8.3

- Bugfix: corrected a liquid error in `/_layout/default.html`

Release 1.9.0

- Bugfix: Fixed the sometimes horizontal scrollbar bug
- Feature: Added option to generate a separately loaded navbanner file.

Release 1.9.1

- Bugfix: Added navbanner.md to the gemspec (file was missing)

Release 1.9.2

- Bugfix: David Crossley fixed a bug where the filename of the column content was not properly used.
- Removed pre v1.8.0 notes and update instructions to shorten the readme.

Release 1.9.3

- Version constraint on jekyll-data from 0.4 up to < 2.0 (Ashmaroli)
- Requires at least jekyll 3.5.1 (Ashmaroli)
- Typo's fixed (David Crossley)
- Added older-posts.html widget (Rien)
- Added image to posts (Rien)
- Added support for sub-menu links with anchor id's. Allows multiple sub-menu entries per file. (Rien)

Release 1.9.4

- Bugfix: Fixed a problem that would cause all posts to appear om home layout instead of the specified number.

Release 2.0.0

- Added ....

## Upgrade information

### from 1.8.0 to 1.8.1

- The file `_includes/navbanner.html` was changed.

### from 1.8.0 to 1.8.2

- The file `_includes/navbanner.html` was changed.

### from 1.8.2 to 1.8.3

- The file `_layouts/default.html` was changed (3rd line)

### from 1.8.3 to 1.8.4

- The configuration file `_config.yml` updated to Jekyll 3.5 standard
- Updated the file `_layouts/default.html` again (3rd line)

### from 1.8.4 to 1.9.0

- The setup file in `_data/setup.yml` (added option to enable/disable separate navbanner file generation)
- The following files have been updated or added:

~~~~
	_data/setup.yml
	_includes/head.html
	_includes/navbanner.html
	_layouts/default.html
	_layouts/navbanner-layout.html
	_sass/classic/_formatting.scss
	navbanner.md
~~~~

- To use the separate navbanner file, copy the "navbanner.md" file from the theme folder to the project folder (at the same relative level)

### from 1.9.0 to 1.9.1

No changes needed.

### from 1.9.1 to 1.9.2

The file `_layouts/default.html` was updated.

### from 1.9.2 to 1.9.3

- Added a new widget: `_includes/widgets/older-posts.html`
- Updated the following files:

~~~~
	_config.yml
	classic-jekyll-theme.gemspec
	_data/setup.yml
	_data/text-for.yml
	_includes/secondary-column.html
	_includes/navbanner.html
	_layouts/post.html
	_sass/classic/_widget-support.scss
	pages/classic/categories.md
	pages/classic/pages.md
~~~~

### from 1.9.3 to 1.9.4

- The layout file 'home.html' was updated. If you made changes to this file, make sure to verify if the bugfix must be applied to your own version.

### from 1.9.4 to 2.0.0

The following files have changed:

~~~~
    _data/setup.yml
    _data/text-for.yml
    _includes/head.html
    _includes/navbanner.html
    _includes/secondary-column.html
    _layouts/default.html
    _sass/classic-jekyll-theme.scss
    _sass/classic/\_formatting.scss
    _sass/classic/\_layout.scss
    _sass/classic/\_widget-support.scss
~~~~

The following files have been added

~~~~
    _includes/vertical-menu.html
    _includes/widgets/categories.html
    _sass/classic/\_vertical-menu.scss
~~~~

## Feedback

Comments, bug reports, feature requests and improvements are eagerly anticipated via email: rien@balancingrock.nl or via [github](https://github.com/Balancingrock/classic-jekyll-theme).

## License

The theme is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

