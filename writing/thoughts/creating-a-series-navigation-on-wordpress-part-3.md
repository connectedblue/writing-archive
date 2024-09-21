---
title: "Creating a series navigation on WordPress: Part 3"
date: "2024-08-25"
categories: 
  - "digital-life"
tags: 
  - "blogging"
  - "not-in-main-feed"
---

This is a part 3 of a series to show you how to create a series navigation menu for your WordPress. Check out [part 1](https://thoughts.uncountable.uk/creating-a-series-navigation-on-wordpress-part-1/) for more information.

### Styling the navigation box

Hopefully at this stage you have a working set of navigation links, albeit a bit plain. You now need to add some CSS code to your site to style up the box a bit.

How you do this very much depends on your theme, so you might want to google "how to add custom CSS to XXX theme on wordpress" to find out how you do this on your them. Sometimes it's `Appearance->Customise->Additional CSS` on the dashboard, but your mileage will vary. If you use the 2024 theme like I do, it's buried away in the most un-intuitive place possible.

Once you have located where your CSS goes, paste in the following code which will give you a basic box

```
.series-nav-area {
   background-color: silver;
   padding: 10px 15px;
   width: fit-content;
   margin:auto;

   p {
     font-style: italic;
     margin: 0px;
   }
   ul {
     padding-left:0;
     margin: 0px;
   }
   li {
     list-style-type: none;
   }
   .red {
     background-color:red;
   }
}
```

When you press save and refresh your series page, you should see a silver box with the next and previous links centred under the article.

This isn't a tutorial on CSS - there are many resources on the web dedicated to styling using CSS. You can make your series navigation box look however your choose with your CSS skills.

This pretty much gives you a functional navigation menu that you can customise and tinker to your heart's content.

You can add as many series as you wish by simply creating and registering new series functions as outlined [in part two](https://thoughts.uncountable.uk/creating-a-series-navigation-on-wordpress-part-2/). If an individual article appears in more than one navigation, they will stack underneath each other so the reader can still navigate the series they are currently on.

But, you can also customise much, much more. You can make different layouts, different styles for different navs and even have rings instead of linear series where there is no beginning or end.

That is the subject of the final part of this tutorial, which goes into more advanced configuration.
