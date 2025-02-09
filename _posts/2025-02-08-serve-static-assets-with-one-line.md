---
title: Serve static assets with one line
layout: post
tags: [macos, static assets, ruby, localhost]
---
I'll show you how to serve static assets with just one line. Granted that you're using macOS.

The one-liner takes advantage of the pre-installed Ruby on macOS. Ruby is included by default in macOS releases since at least El Capitan. Run this command in a directory where you want to serve static assets from:

{% highlight ruby %}
ruby -run -e httpd . -p 3000
{% endhighlight %}

Open up your favourite web browser and you should see those files being served on <code>localhost:3000</code>. I have found this really handy when I'm throwing around some CSS with HTML.
