---
title: "Forgettable passwords"
date: "2012-12-31"
categories: 
  - "digital-life"
tags: 
  - "first-blog"
---

I set up a lot of on-line accounts over the years - over one hundred as it turns out.  Right up until the [linked in password leak](http://www.bbc.co.uk/news/technology-18338956) last year my strategy for assigning passwords was very simple:  use the same one for every site.  Moreover, that word had to be very simple so I could remember it - a town name in fact.

Of course I knew this was unsatisfactory but there was never any motivation to do something better.  After the Linked In episode though, I knew that my user name and password were probably out there and although that wouldn't be enough to get into my bank account, it could still cause chaos.

The only really secure method is to have a different, randomly generated password for each on-line account.  Random is important because even if the password database is breached, there will be much easier ones around to crack than mine.  And different is important because if someone did guess the password for one, then it doesn't help attackers get into any other account.

In other words, to be really effective you need to choose numerous passwords that are all impossible to remember.  The only way to do this is to store them in a password manager secured with a single, very strong and memorable password.

I downloaded an [open source password manager called Keepass](http://keepass.info/) which does just that.  It is a very simple application which allows you to create entries for each site with the following fields:

- _Username_.  The identifier that you use for a site - sometimes it's an email address and sometimes a text string.
- _Password_.  This can be randomly generated according to customisable rules based on password length and allowable characters.
- _URL_.  I set this up to be the login page for the site.  It is useful when you come to use the application to just double click on this rather than bookmarking the page
- _Comments_.  This is very useful to store information such as the security questions, PIN numbers or other things for the site

All of these are stored in a single file using very strong encryption.  You can store this file wherever you like.  I use dropbox because it means I can access it across my PC, mac, ipad and phone.  Keepass runs on all these devices.  You may feel uncomfortable in case dropbox is hacked, but it really doesn't matter because the file is encrypted with a password only you know.

I spent a couple of days going through all my browser history and cookie store to track down every single account I had ever set up.  I logged in to each with my old password and did a password reset to a new random one chosen by Keepass.

Once this is all set up it is very easy to use.  When I need to login to a site, I do the following:

- Open up Keepass and type in the master password
- search for the entry and double click the URL to bring the browser up at the right page
- Alt-tab back to Keepass and press the "copy username to clipboard" icon (it's a fellow wearing a tie)
- Alt-tab back to the browser and paste the username in the correct box.
- Alt-tab back to Keepass and press the "copy password to clipboard" icon (it's a golden key)
- Alt-tab back to the browser and paste the password in the correct box.

This might look unwieldy reading through step by step, but after a couple of attempts it really is very quick.

It is so much less stressful now only having to remember one password.  And another great benefit is that I have a single register of where all my internet accounts are.  It really is surprising how quickly they can build up and now I can manage and control my digital identity more effectively.  For example, old accounts can be closed and contact details can be updated consistently everywhere.
