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

Want to start off with some poetry? Use a plain blockquote by putting `'>'` at the start of each line.
> The rain in Spain,
> Falls mainly on the plains.

It's always good to put some learning objectives up-front. If you have a single objective, you can simply write your objective on a line, then put `{: .objective}` directly after that line. This tells kramdown to style the text above using a css class called `objective`.

Objective: To understand the meaning of life, the universe and everything.
{: .objective}


If you have several objectives, they can be styled by using the blockquote character (`'>'`) for each line, then putting `{: .objective}` after the end of the blockquote.

> By the time you finish reading this module you should:
> - Understand what styles are available
> - Know how to use each style by looking at the markdown of this page
{: .objective}


If you have something important to say, use `{: .note}`.

I have something important to say.
{: .note}

Got a warning? use `{: .warning}`.

WARNING: Don't stand under coconut trees!
{: .warning}

Examples and exercises are best placed in an `{: .inset}`. This will give you a
nice background to *distinguish* this from other text.
{: .inset}

Inline code can be shown using the accent or backtick (\`) character. If you have a block of code you can use
three accents (\`\`\`)  to start and stop a *fenced code block*.

There are three types of code block supported, which follow the [Software Carpentry](https://software-carpentry.org) convention):
- Source: Use when you are typing code that someone should type into their computer
- Output: To show the output of those commands
- Error: When something has gone wrong

Also, if you tell it what lanuage it is it will highlight it for you. This is GitHub Flavoured Markdown (GFM) at work.

For example, putting this into your markdown document:

~~~
```shell
$ cd ~
$ echo "What a wonderful world" > louis_armstrong.txt
$ cat louis_armstrong.txt
```
{: .source}
~~~

Will display like this:
```shell
$ cd ~
$ echo "What a wonderful world" > louis_armstrong.txt
$ cat louis_armstrong.txt
```
{: .source}

After which you can show the output, like this:
```shell
What a wonderful world
```
{: .output}

Or, if there is an error you can display it like this:
```Shell
$ cat louise armstrong.txt
cat: louise: No such file or directory
cat: armstrong.txt: No such file or directory
```
{: .error}

If you want to mix headings, text and code together in an inset you can do it like this.

> ### This is an inset in a blockquote
> You can use whatever you like in here.
> It's especially good for examples, because you can mix plain text and code
> ```python
> import monty_python as mp
> funny = mp.one_liner()
> print(funny)
>```
> {: .source}
{: .inset}




At the end of a module you should do one of two things:

Say **congratulations** and show your readers a picture of a cake.
{: .finished}

...or tell people to:


[Go to the next module]({{ site.baseurl }}/modules/02-styling)
{: .next-link}

That's it! You've made it to the end.

Have a cake :)
{: .finished}
