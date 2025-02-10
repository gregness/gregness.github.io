---
layout: post
tags: [macos, static assets, ruby, localhost]
---
I'll show you how to serve static assets with just one line on the command line. Granted you are using [macOS](https://www.apple.com/macos).

Run this command in the terminal where you want to serve static assets from:

{% highlight ruby %}
ruby -run -e httpd . -p 3000
{% endhighlight %}
