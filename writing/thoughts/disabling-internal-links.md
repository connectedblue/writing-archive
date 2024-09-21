---
title: "Disabling internal links"
date: "2024-08-10"
categories: 
  - "digital-life"
tags: 
  - "blogging"
---

I [deliberately use a lot](https://thoughts.uncountable.uk/do-one-thing-well/) of internal links on my posts because there's a lot of interconnected ideas and long running themes across my posts.

Occasionally you might want to take a previously published post offline for some reason. Maybe you want to redraft it. Or, as I do, schedule it again for a future date as a way of re-surfacing old content for current readers.

In this case, you don't really want any internal links to that post to lead to a dead end, even temporarily. It would be a real pain to go through all your posts, unlink the reference, and then set it back again when the post is live.

Fortunately there is a very nice CSS rule you can add to your site for the period a post called `my-post` is offline:

```
a[href*='my-post']  {
      pointer-events: none;
      cursor: default;
      text-decoration: none;
 }
```

Any post in your site that links to `my-post` will display the link as normal, non-clickable text. It uses a pattern match so `my-post` doesn't even have to be the full slug, just enough of it to uniquely identify the post that is offline.

You can also stack as many posts as you like in the selector, just separate each `a[href*='...']`with a comma.

Of course, if someone has linked to your article from another website, this solution won't solve that. That might need a temporary redirect or similar to give a meaningful message to those users.

But the small amount of code above will keep your own site consistent through this period of change in post status.
