---
title: "Creating a series navigation on WordPress: Part 4"
date: "2024-08-25"
categories: 
  - "digital-life"
  - "various-things"
tags: 
  - "blogging"
  - "not-in-main-feed"
---

This is a part 3 of a series to show you how to create a series navigation menu for your WordPress. Check out [part 1](https://thoughts.uncountable.uk/creating-a-series-navigation-on-wordpress-part-1/) for more information.

### Customising individual series

This post is for more advanced users of the series navigation tool, and assumes you are comfortable editing the PHP code, as well as knowing how to create HTML snippets.

The first function to explore is `series_navigation_defaults()`. This contains a number of configuration items that will apply to every single series navigation, unless over-ridden in an individual series function.

Try changing one of these values - for example `next_pre_link_text`. This will change the text that is displayed before the next article link by default. For example, if you change the value to `'>>'`, then two chevrons will be displayed instead of the text `'Next up: '`.

However, suppose you only wish to change that text for one of your series, not all of them. Then all you do is copy that line and paste it into the appropriate series function before the final `]);`. Then that text will only be changed on that series and not the others.

You can do similar for any other item in that function. A description of what all the different options do is below:

- `nav_box_layout` this is the HTML template used to generate the navigation box for a particular series. This can be anything you wish. Note that there are some special variables in between `{{..}}` which are placeholder for where the intro text and previous/next links go inside the HTML.

- `series_link_layout` this is the HTML template for an individual series link item. Again, it has special variables for placeholders for the slug, title and text.

- `nav_area_layout` the final HTML template which wraps all the nav boxes (there could be more than one per post). This item can only be modified inside the `series_navigation_defaults()` function - it can't be applied to an individual series function.

- `next_pre_link_text` the text that goes before the "next" link in the nav box.

- `prev_pre_link_text` the text that goes before the "previous" link in the nav box.

- `nav_box_class` can specific one or more classes that apply to a nav box. This allows a different CSS styling to apply to the same template but for a different series.

- `nav_area_class` this is the class which applies to the whole navigation area. It can't be applied to a series function.

- `series_ring` if this is set to `true`, then the series next and previous functions just go round in a circle. They don't start and stop at the beginning and end article like they do in a linear series.

This should allow for lots of flexibility to create multiple different series navigations on your site, each styled to your choosing with CSS.
