---
title: Serve static assets with this one-liner
layout: post
---

Disclaimer: this works out-of-the-box only on macOS. Another disclaimer: I have only tried this on macOS. It takes advantage of the pre-installed Ruby.

Run this command in a directory where you want to serve static assets from:

{% highlight ruby %}
ruby -run -e httpd . -p 3000
{% endhighlight %}

Open up your favourite web browser and you should see those files being served on <code>localhost:3000</code>. I have found this really handy when I'm throwing around some CSS with HTML.
