# Classic-Jekyll-Theme

Welcome to Classic-Jekyll-Theme. This theme centers around one of the most used website structures on the web. A banner, navigation menu, (up to) three columns and a footer. The design is fully responsive for three different screen widths: wide, medium and narrow. It is probably best shown in an example:

Wide:

![wide-layout](http://balancingrock.nl/img/classic-jekyll-theme-wide.png)

Medium:

![medium-left-layout](http://balancingrock.nl/img/classic-jekyll-theme-medium-left.png)

Narrow:

![narrow-layout](http://balancingrock.nl/img/classic-jekyll-theme-narrow.png)

The columns are called Primary (blue), Secondary (grey) and Tertiary (pink). In the above layouts the secondary column is on the left side. If it had been on the right side, the medium layout would have looked like this:

![medium-right-layout](http://balancingrock.nl/img/classic-jekyll-theme-medium-right.png)

The menu bar (in yellow) is always deployed in the wide layout. In the medium and narrow layout the menu bar is shown in the deployed state. When not deployed, a menu-item symbol is shown in the banner that switches the menu between deployed and not.

An example screenshot:

![example](http://balancingrock.nl/img/classic-jekyll-theme-screenshot-half.png)

The navigation bar is created automatically from the available pages when they have the proper YAML frontmatter. The navigation bar contains the top level menu items, while the submenu items show up as a drop-down menu when the cursor hovers over the corresponding menu item.

Category pages are created semi-automatically; the web designer has to identify the categories for inclusion, but the menu entry and category pages are created automatically.

For european users a cookies policy is included by default. It can be easily disabled for non-european websites though.

## Installation & setup

Install it as:

    $ sudo gem install classic-jekyll-theme

Create a new project:

	$ jekyll new great-site
	
Change the directory:

	$ cd great-site
	
Change in the Gemfile:

	From `gem "minima", "~> 2.0"` to `gem "classic-jekyll-theme"`

Change in the _config.yml:

	From `theme: minima` to `theme: classic-jekyll-theme`

Delete the file `about.md`:

	$ rm about.md

If the jekyll server is started:

	$ jekyll serve
	
Then the site will show up at `localhost:4000` but it will not contain everything just yet.

Next add the settings for __secondary_column__, __tertiary_column__, __number-of-posts-on-home-page__, __number-of-recent-posts-in-widget__ and __enable-cookies-policy__ to the `_config.yml` file with the values you would like to use. Alternatively simply copy and paste the following few lines to the `_config.yml` file:

    # Classic Jekyll Theme settings

    # Classic uses three columns Primary, Secondary and Tertiary.
    # The primary column is always present and cannot be manipulated.
    # The secondary column is optional and is either to the left or to the right of the primary.
    # The tertiary column is optional and if present will be opposite the secondary column in the wide display and below the secondary in the medium display.
    # In the narrow display all three columns will be below each other (if present)
    # If the tertiary column is used, the secondary column *must* also be used.

    secondary_column: left # must be either 'left', 'right' or 'none', other values are illegal.
    tertiary_column: present # must be either 'present' or 'none', other values are illegal.

    number-of-posts-on-home-page: 5
    number-of-recent-posts-in-widget: 10

    enable-cookies-policy: yes # yes to include, no to disable

    # End Classic Jekyll Theme settings

If the jekyll server was started, then it must be stopped now (CTRL-C) and restarted:

	$ jekyll serve
	
Reload the website, and the columns will show up.

To add sample content that illustrates how pages and categories are implemented, copy the folder `pages` from the gem to the current project. On MacOS the gems are located in: `Library/Ruby/Gems/<version>/gems/classic-jekyll-theme-<version>`. Replace the <version>'s with the appropriate numbers (note: these are two different unrelated version numbers). These pages not only contain examples, but also some additional information about using the theme.

## Configuration

The theme is configured in `_config.yml` and `_sass/classic-jekyll-theme.scss`.

### _config.yml

The following values are configurable:

- secondary_column:

	Controls the placing of the secondary column on either the `left` side, the `right` side or `none` at all.

	When the secondary column is present its contents is taken from the file: `_includes/secondary-column.html`

- tertiary_column:

	Controls the presence of the tertiary column, either `present` or `none`.

	When the tertiary column is present its contents is taken from the file: `_includes/tertiary-column.html`

- number-of-posts-on-home-page:

	By default set to 5, thus 5 posts will be shown in full on the home page.
	
- number-of-recent-posts-in-widget:

	The number of posts (titles) that will appear in the "Recent" widget.

- enable-cookies-policy:
 
	`yes` to enable the cookies warning, `no` to disable. The cookies warning is from [Silktide](http://silktide.com/cookieconsent), distributed under the MIT license.


### _sass/classic-jekyll-theme.scss

The default `main.scss` file has been emptied. Hence all CSS configuration is done in the theme sass file.

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
	menuTitle: "About Pages"
	subMenuFrom: Classic
	menuIndex: 2
	---

- menuInclude: Set to "yes" to link this page from the menu bar.
- menuTitle: The title that will be used in the menu bar.
- menuIndex: The place of the title within the menu bar. For top level menu items, lower numbers will be to the left of higher numbers. For sub-menu items, lower numbers will go above higher numbers. This theme only sorts on menuIndex numbers, not on other properties.
- subMenuFrom:
	- If absent, the page will be linked from a top level menu item. Top level menu items will always be visible when the menu bar is visible.
	- If a subMenuFrom value is present, and there is a matching page with this value as its menuTitle, then this page will be linked from a drop-down (sub) menu item below that top level menu item.
	- If a subMenuFrom value is present, and there is no matching page with this value as its menuTitle, then a top level menu item will be created with this as its title. This page will be linked from a drop down (sub) menu item below that menu item.

For a consistent user experience in the narrow layout, it is recommened not to link pages to top level menu items if these menu items have a drop-down submenu.

## Feedback

Comments, bug reports, feature requests and improvements are eagerly anticipated via email: rien@balancingrock.nl.

## License

The theme is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

