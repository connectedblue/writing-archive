---
title: "Re: Building on the idea of an IndieWeb zine"
date: "2024-08-22"
categories: 
  - "digital-life"
  - "reply-posts"
---

Following posts and discussions with others, Benjamin wrote up his thoughts on [how an indieweb zine might be put together](https://benjamin.parry.is/writing/2024/05/building-on-the-idea-of-an-indieweb-zine/) in practice:

> Publishing any physical media, regardless of quality, takes a lot of time and effort, particularly as the number of people involved increases. **How might we make the process as simple and frictionless as possible for people contributing and curating?**
> 
> Part of the appeal and charm of physical zines and the IndieWeb at that they embody the DIY culture of self-expression without a strict set of rules or deadlines and a sense of ‘done’. **How might we encourage people to participate around time-sensitive responsibilities and milestones?**
> 
> Print material is fixed (proportions, material) while the web is fluid. **How might we create a seamless link between the dimensions and materials of these very different mediums?**

There are a lot of excellent and creative proposals in his post which explore how individual authors can contribute by posting on their own website, but linking a coherent experience together using webrings and CSS print styles.

I'd like to suggest another piece of infrastructure that lends itself well to producing consistent curated content - the humble RSS feed.

RSS doesn't have to be just a list of all content on the website (although that is how most people engage with it). You can have an RSS feed with just one article in it. Indeed, wordpress does this by default if you add `/feed` to any post URL. But other blog tech could also do similar things.

This leads to two exciting possibilities for creating a curated zine.

First of all, a simple RSS aggregator can take all the individual post feeds and put them into a single zine sequence which anyone can subscribe to in their reader. It takes no effort really to curate, the contents of the zine feed never changes for that edition and people can still subscribe to it in 5 years time and read that back copy.

But there's also a way to use the post feed itself to create a consistent branded zine across all the different author websites.

The central editor designs an XSLT stylesheet template for the zine which is hosted on their website. Each author then inserts an additional line into their zine post feed along the lines:

```
<?xml-stylesheet type="text/xsl" href="...." media="screen" ?>
```

pointing back to the central template.

What this means in practice is that the article at `/zine-post` is rendered however the author chooses in their website. But the link `/zine-post/feed` will be rendered in the house style for the zine directly on the browser.

This central template could then include Benjamin's idea of using a dedicated webring to point to the next article because all that is done in the styled header and footer above and below the RSS content for the post.

If everyone agreed to use semantic HTML like `<article>` etc, then you could also have a pretty good central CSS stylesheet that renders all zine posts consistently across different sites.

I find the whole area of XSLT styling fascinating. It could be a good solution for creating curated expos in [the Artocalypse](https://artocalypse.org/i/?rid=66c0e27be2034) (a site for artists which I run) so I will try knocking up some prototypes to see how this concept might work in practice.
