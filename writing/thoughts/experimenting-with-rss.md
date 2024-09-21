---
title: "Experimenting with RSS"
date: "2024-08-12"
categories: 
  - "digital-life"
tags: 
  - "blogging"
  - "rss"
---

I'm rethinking the purpose and nature of my main website and RSS feed. It requires a different approach to posting, and also some custom code to facilitate the experience I want.

There's still a way to go, and these notes are the outcomes so far.

### Objective

I want to move away from the idea that a blog equals a website, and the standard notion that the latest post written is the one shown at the top.

I just don't think it's of much value to a reader or RSS subscriber to see whatever random ideas pop into my head on any given day. Plus I might write 4 posts on a day, and then nothing for a few days.

The combination of random topics showing up at random times seems to be a very low quality reward in exchange for the (very much appreciated) act of seeking out my site.

I also want to treat RSS subscribers as the primary audience and deliver an experience that doesn't instantly make them reach for the unsubscribe button.

It's one of the highest privileges you can earn online for someone to add your feed to their reader. I don't want to abuse that.

### Reader experience

My aim is to deliver the following structure to RSS subscribers and main page visitors:

- One post every day published at 6am. Optionally, a second post at 6pm on some days.

- Sometimes a group of posts on consecutive days follow a common theme.

- Daily posts aren't necessarily new content. I may choose to put a previously written post in the main feed sometimes.

For RSS subscriber, there is an additional structure:

- A short section at the bottom of every post with some custom, time relevant information (such as what's coming up soon on the blog). And also some links to other blogs I've enjoyed recently. I also want to include some links to [reply posts](https://thoughts.uncountable.uk/thoughts-on/reply-posts/) I've made recently.

- Some RSS only posts that appear in the 6pm slot. Exclusive content for RSS subscribers. This will never appear in the main navigations, although the post will exist as a web page that can be directly linked to from the RSS feed.

- Essentially, the RSS feed is like a daily newsletter with one or two articles and some news snippets.

I will still be publishing other articles at different times that will appear in different sections of the website. For example, this post, when it was first published, appeared in the [Digital Life](https://thoughts.uncountable.uk/thoughts-on/digital-life/) section at 10pm one night. Website visitors would be able to view it if they happened to navigate there.

However, I may choose in the future to publish this article in the main feed. So, if you happen to be reading this in RSS, then that's exactly what's happened. I would have changed the published date from long ago to one a few days ago.

### Early Experience

Moving to this threw up some issues to resolve in the early days:

- When switching previously published posts to the future, any internal links I've made to that post from elsewhere in the site [need to be disabled](https://thoughts.uncountable.uk/disabling-internal-links/).

- The RSS post footer initially included a couple of links to recent reply posts I'd made. I did this by just querying the RSS feed for the relevant section to get the latest two links. However, the astute among you will spot the obvious infinite loop in including an item in the RSS body which requires querying an RSS feed which requires the same item in the footer.  
      
    I did not spot this, and woke up to find the website unavailable one morning. There is a workaround for this, but I've not yet been brave enough to implement it at time of writing.

- Sometimes wordpress scheduling failed. If the 6am slot is missed, it doesn't get republished later in the day. I will need to investigate whether there is a more reliable way to do this.

- I use a plugin called Timed Content which allows certain paragraphs in the RSS footer to appear only at certain times (used for scheduling "coming soon" content). But it sometimes doesn't compile properly early in the day, probably due to some caching issues.

In general though, I prefer this way of working on my website. I can still publish articles whenever I wish, and I just spend a bit more time planning the future schedule.

This gives me an opportunity though to present content in new ways. For example, I had a [principles of investing week](https://thoughts.uncountable.uk/july-2024-principles-of-investing-week/) where I pulled together some posts which linked together some core ideas I have on that topic.
