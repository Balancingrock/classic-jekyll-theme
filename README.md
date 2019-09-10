# Classic-Jekyll-Theme v2.5.0

Welcome to Classic-Jekyll-Theme. This theme centers around one of the most used website structures on the web. A banner, navigation menu (dropdown), (up to) three columns and a footer. The design is fully responsive for three different screen widths: widest, medium and narrow. It is probably best shown in an example:

Widest:

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

Or visit a site using this theme like [Balancing Rock](http://www.balancingrock.nl)

Other features:

- __Secondary and Tertiary Columns__ can be specified by default and on a page by page basis for presence, location and content.

- __Navigation bar with drop-down menu__ is created automatically from the available pages when these have the proper YAML frontmatter. The navigation bar contains the top level menu items, while the submenu items show up as a drop-down menu when the cursor hovers over the corresponding menu item. Hovering over submenu item brings up the sub-submenu items.

- __Create the menu__ from either Posts and/or Pages.

- __Category pages__ are created semi-automatically; the web designer has to identify the categories for inclusion, but the menu entry and category pages are created automatically.

- __Cookies policy__ for european users is included by default. It can be easily disabled for non-european websites.

- __Language customization__ (not multi-language support!).

- __Icon__ support for an icon in the upper left corner of the site and/or in the menubar.

- __Background images__ and __Background color__ settings for nearly all site elements.

- __Widgets__ the following widgets are included:
	- recent-posts: Shows a list of the N most recent posts (N is configurable).
	- social-media: Shows a list of social media sites with their links (Edit to add).
	- subscribe: Shows how a visitor can subscribe to your site (Edit to add).
	- youtube-player: Shows a youtube player that scales with the column it is used in (video id parameter).

- __Normalize.css__ [`normalize.css`](https://necolas.github.io/normalize.css/) is used directly instead of through the Jekyll adaptation. This allows for faster upgrade cycles.

- __Excerpt on pages__ Pages defining an explicit "excerpt" in their YAML will use this as the description for the header description meta tag (necessary for SEO purposes). Note that Jekyll does not generate excerpt information for pages, only posts. Hence it is necessary to define the excerpt as a YAML tag.

- __Blocked layout support__ Styles and includes support the creation of blocked layout (like product pages). To see an example of blocked pages, see the [http://balancingrock.nl](http://balancingrock.nl/classic) home page.

- __Enable/disable banner__ The banner at the top of the page can be disabled.

- __Move banner/menu to main column__ The banner & navigation can be moved to within the main column only. The secondary and tertiary columns will then run right up to the top of the screen.

- __Pin banner__ The banner area can be pinned (fixed) to the top of the browser window.

- __Split files for the menus__ It is possible to generate the menu file separate from the content file. While this may slow down the loading of the site a little, it is a huge speed up for site generation under Jekyll.

You can download it from [github](https://github.com/Balancingrock/classic-jekyll-theme) or install it with [rubygems](https://rubygems.org/gems/classic-jekyll-theme).

Like to help out?

You can support further development of this theme, or just say 'thank you' via paypal by donating to sales@balancingrock.nl or wire bitcoins to address: 1GacSREBxPy1yskLMc9de2nofNv2SNdwqH

Suggested donation for personal websites is the price of a good cup of coffee: $4

Suggested donation for commercial sites is the price of a good meal: $20

Contract support for this (or other Jekyll related work) is available: sales@balancingrock.nl

## Usage

Please see [http://balancingrock.github.io/classic-jekyll-theme](http://balancingrock.github.io/classic-jekyll-theme) on how to use the theme and which frontmatter is available.

## History

- Release 2.0.0 (2017-12-19)
- [Release 2.1.1 (2018-01-22)](http://balancingrock.github.io/classic-jekyll-theme/classic/2017/12/22/bugfix-2-1.html)
- [Release 2.2.0 (2018-02-02)](http://balancingrock.github.io/classic-jekyll-theme/classic/2018/02/02/release-2-2-0.html)
- [Release 2.3.0 (2018-02-05)](http://balancingrock.github.io/classic-jekyll-theme/classic/2018/02/05/release-2-3-0.html)
- [Release 2.4.0 (2019-01-15)](http://balancingrock.github.io/classic-jekyll-theme//2019/01/15/release-2-4-0.html)
- [Release 2.4.2 (2019-08-16)](http://balancingrock.github.io/classic-jekyll-theme//2019/08/16/release-2-4-2.html)
- [Release 2.4.3 (2019-09-09)](http://balancingrock.github.io/classic-jekyll-theme//2019/09/09/release-2-4-3.html)
- [Release 2.5.0 (2019-09-10)](http://balancingrock.github.io/classic-jekyll-theme//2019/09/10/release-2-5-0.html)

## Suport & Feedback

Comments, bug reports, feature requests and improvements are eagerly anticipated via email: rien@balancingrock.nl or via [github](http://balancingrock.github.io/classic-jekyll-theme).

## License

The theme is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

