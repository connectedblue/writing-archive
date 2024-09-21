---
title: "Creating a series navigation on Wordpress: Part 1"
date: "2024-08-25"
categories: 
  - "digital-life"
tags: 
  - "blogging"
  - "not-in-main-feed"
---

I have a hand-coded feature on this blog which allows a [series of articles to be curated](https://thoughts.uncountable.uk/curating-a-series-of-articles/), and presenting a navigation to readers which allow them to navigate to the next after finishing one.

This is a series of posts which shows you step by step how to create a similar feature for your Wordpress site. You can scroll to the bottom of this post to see the feature in action!

The tutorial is split into four parts, but you'll be able to get it working on your site after reading this post and the next one:

- [Introduction and pre-requisites](https://thoughts.uncountable.uk/creating-a-series-navigation-on-wordpress-part-1/) (this post)

- [Getting started](https://thoughts.uncountable.uk/creating-a-series-navigation-on-wordpress-part-2/)

- [Styling the navigation box](https://thoughts.uncountable.uk/creating-a-series-navigation-on-wordpress-part-3/)

- [Customising individual series](https://thoughts.uncountable.uk/creating-a-series-navigation-on-wordpress-part-4/)

### Pre-requisites

You'll need a Wordpress site that you can load php code into. If you know how to do this already, you can [skip to the next section](https://thoughts.uncountable.uk/creating-a-series-navigation-on-wordpress-part-2/) and grab the code, otherwise read on!

You'll need to install a plug-in that allows you to manage a library of snippets. This is useful in general, since you can use it not only for this code, but any other php snippets you come across on the web.

There are a few available, but the one I use is [Code Snippets](https://codesnippets.pro/). The free version allows you to have as many snippets as you like in your library (there are paid options with AI available, but I haven't explored those).

Install and activate the plugin. There's a new dashboard menu item called "Snippets" and you select "Add New" to get a blank page where you can add a title to help you find this code later. I call mine "Series navigation"

You should see a blank screen with a greyed out `<?php` at the top. If you can't see that, try clicking on the Functions tab.

You're now all set to add in the code!
