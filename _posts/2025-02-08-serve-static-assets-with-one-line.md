---
title: 
layout: post
tags: [macos, static assets, ruby, localhost]
---
I'll show you how to serve static assets with just one line. Granted you are using macOS.

Run this command in a directory where you want to serve static assets from:

{% highlight ruby %}
ruby -run -e httpd . -p 3000
{% endhighlight %}
