---
title: "Re: RSS Feed Best Practises"
date: "2024-08-14"
categories: 
  - "digital-life"
  - "reply-posts"
tags: 
  - "rss"
---

Kevin has put together an [excellent practical reference](https://kevincox.ca/2022/05/06/rss-feed-best-practices/) on the best practice for your RSS feeds:

> People generally call feeds “RSS Feeds” but usually they aren’t specifically talking about RSS. RSS isn’t the only, or even the best format. Using a standardized format is critical to your feed being understood by the widest variety of readers and search engines.
> 
> You should use [RSS 2](https://validator.w3.org/feed/docs/rss2.html) or [Atom](https://datatracker.ietf.org/doc/html/rfc4287). These formats are very widely supported. Other common formats are earlier RSS standards and [JSON Feed](https://www.jsonfeed.org/) or [Microformats h-feed](https://microformats.org/wiki/h-feed). I would avoid using these—or even less common formats—as they are less widely supported.

It's a super comprehensive guide. I don't have a lot of control on the feed production since wordpress does most of the heavy lifting, but there's still a number of things I will think about.

I have recently been [elevating the RSS experience](https://thoughts.uncountable.uk/elevate-your-websites-rss-feed/) for people who subscribe to my blog, so being aware of the nuances of the format and how various clients implement the content is of interest to me.

The things I will think about more deeply are:

- Dates

- Discovery

- Styling

- Self links

I add a footer in the RSS feed for my daily post and I've found by trial and error how content appears in various readers. I use inline styles mostly for padding - so if it works, great and if it doesn't, then no harm done. But Kevin points out some styling issues to avoid because they could inadvertently make your content unreadable if they are only partially stripped by the clients.

For me, RSS is a key community engagement tool. I don't want an email list, so if someone wants to read my blog on a regular basis, I want to provide the best RSS experience I can in return.
