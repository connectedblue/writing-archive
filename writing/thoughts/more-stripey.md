---
title: "More stripey"
date: "2024-09-21"
categories: 
  - "digital-life"
tags: 
  - "blogging"
---

Sara took the code I made for [stripey code boxes](https://thoughts.uncountable.uk/making-stripey-code/) and [added it to her site](https://sarajaksa.eu/2024/09/kako-primere-kode-narediti-bolj-berljive-z-css-jem/) with modifications. In particular, she added a dark mode, so that the code renders in a dark shade of stripeyness.

I use a wordpress plugin for the dark mode switch on this blog, and it proved to be a bit unreliable. What I really wanted was a generic code for the actual formatting, and then isolate the particular selectors for my set up when dark mode is enabled.

So, I decided to have binary custom properties `--is-light` and `--is-dark` that get set independently of the stripey code. So now, the code becomes:

```
/* make alternate lines stripey on code boxes */

pre:not(.no-stripey) {
   --_lh: 2em;
   --_l1-background: 
        var(--is-light,hsl(0, 0%, 14%)) 
        var(--is-dark, hsl(0, 0%, 14%));
   --_l2-background: 
        var(--is-light,hsl( 216 , 16% , 86% )) 
        var(--is-dark,hsl(0, 0%, 16%));
   --_l-color: 
        var(--is-light,#37505d)
        var(--is-dark, #f0f0f0);

   background: repeating-linear-gradient(180deg,              
       var(--_l1-background) 0 var(--_lh), 
       var(--_l2-background) 0 calc(2*var(--_lh)));
   line-height: var(--_lh);
   color: var(--_l-color);
}
```

This code sets the `l1` and `l2` background and also the foreground colour depending on whether the flags `--is-light` or `--is-dark` are set.

Note also I included a `.no-stripey` class. Sara noticed that she has some posts where the `pre` tags are not code snippets. I have a few of those too (for example on my [Kastlebaj](https://thoughts.uncountable.uk/kastlebaj/)). So essentially, stripeyness is the default behaviour unless I throw a `no-stripey` class onto a place where I don't want it.

The light and dark custom properties are set up as follows:

```
/* set light mode and dark mode flags */

:root {
   --is-light: initial;
   --is-dark:  ; /* the value is one space */
}

html.wp-dark-mode-active,
[data-wp-dark-mode-active="true"] {
   --is-light:  ; /* the value is one space */
   --is-dark: initial;
}
```

The thing that makes this work is that any custom property with value `initial` automatically picks up the default value when called with `var`. So these default values are defined in the stripey code block. But by setting the value to a single space, that is inserted instead of the default value (and hence does not appear in the code).

This has the advantage that these toggle properties can also be re-used in other areas of the CSS as well where different values are required for light and dark modes.

The selectors `html.wp-dark-mode-active` etc are just the relevant selectors for dark mode in my theme and plugins. You'll have to pick the ones relevant for your site to define the dark mode toggle.

This is a great example of how incremental improvements are made as bloggers share and spread ideas. The whole thing was [sparked by Bee](https://splendide-mendax.com/posts/2024-09-07_translation_styles) who was trying to find the best way to format alternative translations of Latin poetry.

You never know quite where your next inspiration might come from on the independent web.
