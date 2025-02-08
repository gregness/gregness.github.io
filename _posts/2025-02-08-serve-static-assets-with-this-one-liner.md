---
title: Serve static assets with this one-liner
layout: post
---

Little disclaimer: this works out-of-the-box only on macOS. Another disclaimer: I have only tried this on macOS.

Run this command in a directory where you want to serve static assets from:

{% highlight ruby %}
ruby -run -e httpd . -p 3000
{% endhighlight %}

Open up your favourite web browser and you should see them being served on <code>localhost</code> port 3000. This will come really handy when you're throwing around some CSS on HTML.
