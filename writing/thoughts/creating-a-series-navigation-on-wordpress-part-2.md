---
title: "Creating a series navigation on WordPress: Part 2"
date: "2024-08-25"
categories: 
  - "digital-life"
tags: 
  - "blogging"
  - "not-in-main-feed"
---

This is a part 2 of a series to show you how to create a series navigation menu for your Wordpress. Check out [part 1](https://thoughts.uncountable.uk/creating-a-series-navigation-on-wordpress-part-1/) for more information.

### Getting started

Hopefully you have a blank screen in front of you, ready to paste in some code.

I've included the code you need at the bottom of this post. Cut and paste it into the blank code snippet screen on your dashboard, press save and activate. Then come back here to continue.

Nothing should have changed on your website yet, and hopefully it still works! If you ever notice an error on your site while going through this tutorial, first thing is to Deactivate the snippet which will remove it from the site and hopefully restore it to working order.

Although the code is a bit squashed up in this post, it should be a bit more readable once you have pasted it into your site.

### Create your first series

To test it out, find three posts on your site that you want to make into a series. You can add as many more as you like later, but three will allow you to test your first code properly.

You'll be creating a PHP function for each series that you have on your site. That might sound a bit scary, but all you're doing is modifying the template I have given below. I've used wildflower series as an example.

Find the function `wildflower_series()`. A function is some code in between two outer curly brackets `{ . . . }`. The name of the function is the word between `function` and `()`.

Choose your own name for the series to one you will recognise later. You can't have spaces in the name, but you can have `_` characters.

Now find the bit of code underneath beginning `slugs`. This is where you will enter the individual slug of each article in your series, in order you want them to appear. The slug is essentially the final part of the post URL after the last `/`.

Replace `wildflower-article-1` with your first slug and repeat for the next two. Later on, you can add more to this series by just cut and pasting new lines, each with the slug. You can change the order, insert new ones and the navigation will re-generate correctly each time.

Just remember to include the single `'` around the slugs and the comma `,` at the end.

### Customising navigation text

Once you have entered the slugs for your series, you now have the option to specify some text above the "Next" and "Previous" links. You can have different text on the first article, middle articles and the last article (or you can make them the same if you prefer).

Look for the various `_article_intro` codes and you can see the text on the right hand side of the `=>` . Change the text in between the `'` to whatever you like. Note that you can include HTML tags in this if you wish - I use this to always have a link to the home article in the series. But you don't have to - you can just have plain text. Or you can have it empty by specifying `''`.

### Activating your series navigation

You're nearly there!

The last step in creating a new series is to add your function to the list of other series functions on your site.

Find the `get_all_series_on_site()` function below the series function you just created. Now you have to put whatever you called you function into that function. Just replace `wildflower_series()` with your function name, including the `(),`afterwards (no space).

Press save and activate and you should be able to see a new navigation box below each of your series articles. They are not styled yet (we'll do that in the next section). But the links should work and you can go back and forth between the correct articles.

```
// create a new function like this for every new series you want to create.
function wildflower_series(){
	return new series_navigation([
		// Put the list of series slugs in order, one per line with a comma at the end
		'slugs' => [
				'wildflower-article-1',
				'wildflower-article-2',
				'wildflower-article-3',
		],
		// Text above the navigation links on the first article in the series
		'first_article_intro' => 'My wildflower series',
		// Text above the navigation links on the middle articles in the series
		'mid_article_intro' => 'This article is part of a <a href="/wildflower-article-1">series on wild flowers</a>.',
		// Text above the navigation links on the last article in the series
		'last_article_intro' => 'This is the last article in a <a href="/a-reading-list-for-investing">series on wild flowers</a>. I hope you found it valuable and enjoyed reading',
        ]);
}

function get_all_series_on_site() {
	return [
		// include the function names for each series definition, one per line separated by a comma
		wildflower_series(),
	];
}

function series_navigation_defaults() {
	// these values apply to all series, unless over-ridden in a definition function above
	// for a particular series.
	return [
		'nav_box_layout' => ' 
				<nav class="{{nav_box_class}}">
				<p> {{intro_text}}</p>
				<ul> 
				   <li>{{next_link}}</li>
				   <li>{{prev_link}}</li>
				</ul>
				</nav>
				<br/>
				',
		'series_link_layout' => '
		    {{pre_link_text}}<a href="/{{link_slug}}">{{link_title}}</a>
		',
		// NB: nav_area_layout applies to all nav boxes and can't be over-ridden by a definition function
		'nav_area_layout' => '
			<br/><br/>
			<div class="{{nav_area_class}}">
			  {{nav_boxes}}
			</div>
		',
		'next_pre_link_text' => 'Next up: ',
		'prev_pre_link_text' => 'Previous: ',
		'nav_box_class' => 'series-nav',
		'nav_area_class' => 'series-nav-area',
		// if set to true, the next navigation for the last article loops back to the first and vice-versa
		'series_ring' => false,
		'first_article_intro' => '', 
		'mid_article_intro' => '', 
		'last_article_intro' => '',
		'slugs' => [],
	];
}

// Only change code below this line if you know what you are doing!!

function add_series_navigation( $content) {
	$series_navigation_defaults = series_navigation_defaults();
	$slug = get_post_field( 'post_name', get_post() );
	$all_series = get_all_series_on_site();
	$nav_boxes = '';
	foreach ($all_series as $s) {
		$nav_boxes = $nav_boxes . $s->get_navigation_box($slug, $content);
	}
	// Add the nav boxes into the template and append to content
	if ($nav_boxes !='' ) {
		$layout = str_replace('{{nav_boxes}}', $nav_boxes, $series_navigation_defaults['nav_area_layout']);
		$layout = str_replace('{{nav_area_class}}', $series_navigation_defaults['nav_area_class'], $layout);

		$content = $content . $layout;
	}
	return $content;
}
// This filter runs early
add_filter('the_content', 'add_series_navigation', 3);

class series_navigation {
	function __construct($args) {
		$args = array_merge(series_navigation_defaults(), $args);
		
    	$this->slugs = $args['slugs'];
		$this->first_article_intro = $args['first_article_intro'];
		$this->mid_article_intro = $args['mid_article_intro'];
		$this->last_article_intro = $args['last_article_intro'];
		$this->next_pre_link_text = $args['next_pre_link_text'];
		$this->prev_pre_link_text = $args['prev_pre_link_text'];
		$this->nav_box_class = $args['nav_box_class']; 
		$this->nav_box_layout = $args['nav_box_layout'];
		$this->series_link_layout = $args['series_link_layout'];
		$this->series_ring = $args['series_ring'];
		
		$this->series_length = count($this->slugs) - 1;
    }
	
	function get_navigation_box($slug) {
		// Check if there's a navigation box for this post
		$idx = array_search($slug, $this->slugs);
		$nav_box='';
		if ($idx !== false ) {
			if ($idx < $this->series_length ) {
				$next_link=$this->link_to_series_post($this->slugs[$idx + 1], $this->next_pre_link_text);
			} else if($this->series_ring){
					$next_link=$this->link_to_series_post($this->slugs[0], $this->next_pre_link_text);
			} else {
					$next_link='';
			}

			if ($idx > 0 ) {
				$prev_link=$this->link_to_series_post($this->slugs[$idx - 1], $this->prev_pre_link_text);
			} else if($this->series_ring){
					$prev_link=$this->link_to_series_post($this->slugs[$this->series_length], $this->prev_pre_link_text);
			} else {
					$prev_link='';
			}

			if ($idx == 0) {
				$intro_text = $this->first_article_intro;
			} else if ($idx == $this->series_length) {
				$intro_text = $this->last_article_intro;
			} else  {
				$intro_text = $this->mid_article_intro;
			}
	
			$layout = str_replace('{{nav_box_class}}', $this->nav_box_class, $this->nav_box_layout);
			$layout = str_replace('{{intro_text}}', $intro_text, $layout);
			$layout = str_replace('{{next_link}}', $next_link, $layout);
			$layout = str_replace('{{prev_link}}', $prev_link, $layout);

			$nav_box = $nav_box . $layout;	
		}
		return $nav_box;	
	}

	function link_to_series_post($slug, $pre_link_text) {
		$layout='';
		if ($slug != '') {
			$layout = str_replace('{{pre_link_text}}', $pre_link_text, $this->series_link_layout);
			$layout = str_replace('{{link_slug}}', $slug, $layout);
			$layout = str_replace('{{link_title}}', get_the_title( url_to_postid( site_url($slug) )), $layout);
			}
		return $layout;
		}
}
```
