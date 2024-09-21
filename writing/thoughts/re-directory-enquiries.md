---
title: "Re: Directory Enquiries"
date: "2024-07-10"
categories: 
  - "digital-life"
  - "reply-posts"
---

Jeremy posed an excellent question about how to organise resources for front end developers his post [Directory Enquiries](https://adactio.com/journal/21278).

> I actually think there are [plenty of good articles and resources on front-end development](https://adactio.com/links/tags/frontend,development) being published. But they’re not being published in any one specific place. People are publishing them on their own websites.
> 
> [Ahmed](https://ishadeed.com/), [Josh](https://www.joshwcomeau.com/), [Stephanie](https://thinkdobecreate.com/), [Andy](https://piccalil.li/), [Lea](https://lea.verou.me/), [Rachel](https://rachelandrew.co.uk/), [Robin](https://robinrendle.com/the-cascade/), [Michelle](https://css-irl.info/) …I could go on, but you get the picture.
> 
> All this wonderful stuff is distributed across the web. If you have a well-stocked RSS reader, you’re all set. But if you’re new to front-end development, how do you know where to find this stuff? [I don’t think you can rely on search](https://adactio.com/journal/21241), unless you have a taste for [slop](https://simonwillison.net/2024/May/8/slop/).

I think this is a great way to think about this problem. Rather than rely on central platforms to author critical content, which can disappear at any time, why not just curate the existing content from the acknowledged experts out there.

I have a suggestion for an approach. I'm basing it on what we use for [the artocalypse](https://artocalypse.org/), which is essentially a curated RSS feed for IndieWeb artists. The home page is a customised view of the FreshRSS platform.

Let's suppose that the hub service is called Front End Directory. The directory determines which authors are potential experts for different parts of the directory. They also determine the taxonomy of the directory.

The directory approaches each author and asks if they would like to contribute (either from back catalogue or new content) and asks them to licence permission to reproduce their feed (artocalypse asks for similar permission in its [terms of membership](https://the.artocalypse.org/terms-of-membership/)).

Authors then tag their articles to a particular RSS feed on their site according to the category then are writing for (e.g. `#fed-css` which is destined for the CSS category of the Front End directory). So only certain articles intended for the Front End Directory are included, not their whole website feed.

The Front End Directory team can then construct a giant OPML which contains all the individual author category RSS feeds. Once the feeds are set up, there's no more work to do centrally other than just monitor for quality and relevance. Otherwise just sit back and let the authors do the content creation.

The Front End Directory can then create it's own RSS feeds which aggregate all the categories. It can also display a live feed on it's homepage like the artocalypse does.

Better still, allow anyone on the web to create a display hub based on the official OPML. That distributes the load where users can browse the content in different settings.

Because it's RSS, the links always go back to the original author so they are always credited with the work.

I'm happy to get together with a few people to develop these ideas further. Decentralised aggregation and quality control are something that the IndieWeb can co-operate on well, and experiment with different solutions.
