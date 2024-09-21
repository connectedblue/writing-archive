---
title: "Curating a series of articles"
date: "2024-08-24"
categories: 
  - "digital-life"
tags: 
  - "blogging"
---

Blogs will typically organise groups of content using categories or tags. They are useful to present related content to readers. For example, I use them to group all [my reply posts](https://thoughts.uncountable.uk/thoughts-on/reply-posts/).

However, they don't really help the reader to navigate an ordered series of articles. Category archives are displayed usually in date order, which may not be the best order to read them in. Moreover, if you click through to one, you then need to press the back button to find the next to read.

I recently created [a reading list for investing](https://thoughts.uncountable.uk/a-reading-list-for-investing/) which is a collection of blog posts that make sense to read in sequence, like a book. This acts like a table of contents, but the reader would still have to return to it and find the next one to read.

So I came up with the idea of a series navigation. At the end of each article in the series, there is a link to the next and previous articles. There is also a bit of text above it which differs depending on whether it's the first, last or middle article in the series.

For example, the article [on risk](https://thoughts.uncountable.uk/what-is-risk/) has links at the bottom, so the reader can "turn the page" to the next one. And the last one in the series [on investment platforms](https://thoughts.uncountable.uk/choosing-an-investment-platform/) contains a "thanks for reading the series" message.

You could achieve this by manually adding navigation links to each article in the series, but that becomes a pain to maintain, if for example, I wanted to add another article in the middle, or wanted to change the layout of the nav box itself.

An automated solution is better, which adds the correct links to the end of each post in the series. I didn't bother to see if a wordpress plugin would do this - it's a small amount of PHP code which I made generic enough to have different series in future. If an article happens to be part of two series, both navigation boxes would be presented at the end so the reader knows which to select next.

The RSS reader experience is also [important to me](https://thoughts.uncountable.uk/experimenting-with-rss/), so by writing the code myself, I can ensure that the next and previous links are presented correctly at the bottom of each article in the feed also.

If anyone would like to see wordpress code to do this, I have written [a tutorial](https://thoughts.uncountable.uk/creating-a-series-navigation-on-wordpress-part-1/) on how you can add it to your site.
