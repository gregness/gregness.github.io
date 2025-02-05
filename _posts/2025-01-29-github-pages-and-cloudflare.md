---
title: GitHub Pages and Cloudflare
category: software
tags: [githubpages, cloudflare, free, optimization]
layout: post
---
In my previous post, I mentioned how Jekyll gained traction thanks to its utilization for [GitHub Pages](https://pages.github.com). This time I will briefly go over the infrastructure part of this website's stack. I've accepted the free hosting from GitHub for my blog. But the repository must be public at the free tier. Not a big price to pay for managed hosting and deployment. And I got to use my own custom domain!

Anyway, above GitHub Pages lies [Cloudflare](https://www.cloudflare.com/plans/free/). It comes in at the network layer. Actually, its capabilities span across more layers but that's beyond this post. At Cloudflare free tier, I get global CDN with caching, DNS management, and basic analytics/metrics. Can't complain.

This website was already performing at optimal levels. Being static files and just hanging about. The forbidden fruit of premature optimization.
