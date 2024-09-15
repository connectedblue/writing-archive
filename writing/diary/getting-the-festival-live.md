---
title: "Getting the festival live"
date: "2023-08-27"
categories: 
  - "dursley-welcomes-walkers"
coverImage: "fesival-website.webp"
---

It's August bank holiday weekend again, which means time to get the programme published for the annual [Dursley Walking Festival](https://festival.dursleywelcomeswalkers.org.uk/). This gives people a whole month to book their walks before the festival starts in October.

This is the third year I've built the festival website, using Wordpress and WooCommerce. Most of the logic and functionality is built which means only changing some templates and loading the details of the new walks each year.

However, this year I wanted to focus on performance. Last year the site was functional but very slow, and I could see from the stats that half the visitors clicked away after less than 10 seconds.

So I created a super fast cache which essentially served the raw HTML to visitors rather than the wordpress stack. This is OK, except that the number of places remaining on each walk needs to update in real time. The cached pages were not being updated automatically after each booking.

I managed to get a workable solution by "priming the cache" every three minutes by re-fetching new pages for each walk. So there's a delay of at most 15 minutes between a walk being booked and the correct remaining places being shown.

I sent out an email to our list of 845 subscribers and in the first 24 hours received 156 bookings. So I'm happy enough that people are finding the site easy and fast to use.
