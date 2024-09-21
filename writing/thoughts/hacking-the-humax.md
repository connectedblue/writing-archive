---
title: "Hacking the humax"
date: "2012-12-29"
categories: 
  - "digital-life"
tags: 
  - "first-blog"
---

I've had free satellite TV for sometime now, mainly because my village didn't pick up a Freeview signal for ages, but also because the [rather excellent Humax Foxsat](http://www.humaxdigital.co.uk/global/products/product_stb_satellite_foxsat-hdr.asp) can be made to do things that other PVR owners can only dream about.

There's a [very simple to install firmware upgrade](http://www.avforums.com/forums/freesat/1661195-media-file-server-bundle-foxsat-hdr-release-4-0-part-3-a.html) that makes the foxsat behave as a media server.  This means that your television recordings are exposed as uPNP streams over your home network, meaning you can watch them in other rooms in the house, on a PC, ipad, or jailbroken apple TV.

Here's my setup:

- Humax and main telly in the conservatory connected to a powerline ethernet adaptor.  
- Main broadband router upstairs connected to another powerline ethernet adaptor on one of the LAN ports.
- Apple TV in the front room wirelessly connected to the broadband router and jailbroken.  Once jailbroken, the apple TV can run [XBMC](http://wiki.xbmc.org/index.php?title=How-to:Install_XBMC_on_Apple_TV_2) which amongst other things will act as a uPNP client.  This allows the recording library on the humax to be browsed and watched in the living room, without affecting someone watching in the conservatory
- Apple iPad running the  [Ace Player](https://itunes.apple.com/gb/app/aceplayer-powerful-media-player/id463242636?mt=8) app which can connect to the humax library wirelessly from anyway in the house.  Also has a download option so I can save TV programmes on the ipad for rail commutes.
- Boxee running on the mac to do the same on the laptop.
- An Iomega NAS drive connected to the router which programmes can be copied onto when space is running low on the humax,  This also exposes itself as uPNP streams so can be browsed by the apple TV and ipad in exactly the same way.

The humax can apparently run up to seven simultaneous uPNP feeds without breaking into a sweat - this could be great resource in a household where many children want to watch something different at the same time.

Someday I'll look into hacking the Raspberry Pi to have a uPNP client so it can be velcroed onto the back of the telly in the spare room.
