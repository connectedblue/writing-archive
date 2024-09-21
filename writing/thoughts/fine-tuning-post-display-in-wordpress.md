---
title: "Fine tuning post display in Wordpress"
date: "2024-08-15"
categories: 
  - "digital-life"
tags: 
  - "rss"
---

There are some small tweaks to this blog's navigation which give more flexibility on the type of posts I can make.

I created some special tags for posts when I want this fine tuned behaviour:

- `Quick Thoughts` when I just want to say something short, a bit like a tweet. This is random stuff at random times, so I don't want it appearing on the home page or in the main RSS feed. There's a special archive template to show these on the [Quick Thoughts](https://thoughts.uncountable.uk/topic/quick-thoughts/) page.

- `RSS only` for posts that only RSS subscribers can read. So these need to show up in the feeds but not the website.

- `Not in main feed` is for any post that I want to publish but I don't want it to appear on the home page or the main RSS page. Usually because I have a specific schedule and theme around the main posts, and this just doesn't fit it. A good example are posts for [my maths reading project](https://thoughts.uncountable.uk/thoughts-on/princeton-companion-to-mathematics/) which no-one is interested in except me!

I use Wordpress, and although there may well be some plug-ins to do this, it's just as quick to write a bit of custom code and get exactly the behaviour I want.

I've included the code below. If anyone wants to use it, it should be self explanatory how to customise it - all you do is change the tag IDs to ones relevant for your system.

If you've never used custom code on wordpress before, I recommend installing the [Code Snippets plug-in](https://wordpress.org/plugins/code-snippets/) which allows you to have as many custom code pieces as you want.

Finally, as an additional source of amusement for myself, this is what an [rss only post looks like](https://thoughts.uncountable.uk/re-my-favourite-feeds/) if you try to view it on the web. It really is [a secret](https://thoughts.uncountable.uk/topic/rss-only/) between me and your RSS reader.

```
function include_exclude_from_feeds($query) {
	$not_in_tags = array();
	// Don't show certain tags on the home page or RSS feed
    if (is_home() 
        || ( is_feed() 
             && !is_tag()  
             && !is_category() ) ) {
    
       // 10 is Quick Thoughts, 62 is Not in main feed
        array_push($not_in_tags, 10, 62);  
        
    }
	// Don't show certain tags on the home page or archives
	if ( (is_home() || is_archive()) 
             && !is_feed() 
             && !is_admin())  {
          // 60 is RSS only
          array_push($not_in_tags, 60); 
    }
    $query->set('tag__not_in',$not_in_tags);
    return $query;
}

add_filter('pre_get_posts','include_exclude_from_feeds');
```
