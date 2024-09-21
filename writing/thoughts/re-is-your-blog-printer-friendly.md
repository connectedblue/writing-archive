---
title: "Re: Is your blog printer friendly?"
date: "2024-08-08"
categories: 
  - "digital-life"
  - "reply-posts"
tags: 
  - "artocalypse"
  - "blogging"
---

Yes ... It is now!

Robert Birming [asked this question](https://birming.com/blog-printer-friendly/) which is something I had not considered before, having not owned a printer for decades.

But we style for the desktop and phones. And sometimes we even style for screenreaders to increase accessibility. Why not style for printers too?

Robert included a code snippet for his blog platform, but it's pretty generic and worked out the box on my wordpress theme. I tweaked a couple of things, but if you now hit print preview on one of my articles, you'll get a clean, compact layout with no navigational clutter.

I extended his `display:none;` selectors with an additional class called `.noprint` which can now be added to any element grouping on a post or page to hide it from the print view.

Printing is not just for printers. It's also a way to create pdf versions of your posts straight from the browser. So it's definitely worth a few minutes of time to spruce up your blog for this format.
