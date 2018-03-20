---
layout: page
title:  "Module 02: Styling"   # This will appear at the top of the page
short-title: "Mod. 2" # This will appear in the Nav bar in the header
show-in-nav-bar: true
---

Welcome. This page will show the styling available.

# This is header 01
## This is header 02
### This is header 03

It's always good to start with some learning objectives. If you have a single objective, you can simply write your objective on a line, then put `{: .objective}` directly after that line. This tells kramdown to style
the text above using a css class called `objective`.

There is only one reason for this.
{: .objective}


If you have several objectives, they can be styled by using the blockquote character (>) for each line,
then putting `{: .objective}` after the end of the blockquote.

TODO: Multiple objectives are not rendering properly
> By the time you finish reading this module you should:
> - Understand what styles are available
> - Know how to use each style by looking at the markdown of this page
{: .objective}

If you have something important to say, use `{: .note}`.

I have something important to say.
{: .note}


Examples and exercises are best placed in an `{: .inset}`. This will give you a
nice background to *distinguish* this from other text.
{: .inset}

Inline code can be shown using the accent or backtick (\`) character. If you have a block of code you can use
three accents (\`\`\`)  to start and stop the block. Also, if you tell it what lanuage it is it will highlight it for you. This is GitHub Flavoured Markdown (GFM) at work.

TODO: Unwanted indent in first line of code block
```shell
cd ~
echo "What a wonderful world" > louis_armstrong.txt
cat louis_armstrong.txt
```
If you want to get really fancy, you can add more sophisticated syntax highlighting using [rouge](http://rouge.jneen.net/), and you can even add line numbers if you like.
{% highlight python linenos %}
cd ~
echo "What a wonderful world" > louis_armstrong.txt
cat louis_armstrong.txt
{% endhighlight %}


If you want to mix headings, text and code together in an inset you can do it like this.

TODO: This not rendering the same way as the inset above.
> ## This is an inset in a blockquote
> You can use whatever you like in here.
> It's especially good for examples, because you can mix plain text and code
>
> ```python
> import monty_python as mp
> funny = mp.one_liner()
> print(funny)
>```
{: .inset}

At the end of a module you should do one of two things:

Say **congratulations** and show your readers a picture of a cake.
{: .finished}

...or tell people to:


[Go to the next module]({{ site.baseurl }}/modules/02-styling)
{: .next-link}

TODO: Rename the `next-link` class to `next`

That's it! You've made it to the end.

Have a cake :)
{: .finished}
