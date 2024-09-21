---
title: "Making stripey code"
date: "2024-09-11"
categories: 
  - "various-things"
---

I was checking out a post from Bee this morning on new ways to [format different translations of Latin poetry](https://splendide-mendax.com/posts/2024-09-07_translation_styles) when my eye was drawn to her code box at the bottom. Every other line was shaded which made it much easier to distinguish the lines.

I don't think I've ever seen that before, and wanted it on my site as well. If you are of a certain age, it also has a whiff of the old giant computer printer paper that used to have alternate green backgrounds for the lines.

It turns out to be a very simple piece of CSS:

```
/* make alternate lines on code blocks stripey */
code {
     --_lh: 2em;
     background: repeating-linear-gradient(180deg, 
                 hsl( 216 , 16% , 88% ) 0 var(--_lh), 
                 hsl( 216 , 16% , 86% ) 0 calc(2*var(--_lh)));
    line-height: var(--_lh);
    padding-left:  5px;
    padding-right: 5px;
}
```

Creating a private custom property `--_lh` for the code line height keeps things easier to maintain. Once you set the line height, the linear gradient function just specifies the colours to put on the first and second stripes.

The `hsl` colour function is also useful here. I only wanted a very slight darkening of the usual colour for my code blocks and tweaking the third parameter by a couple of % was sufficient for a subtle look.

Overall, I think it makes blocks of code more approachable and comfortable to study.
