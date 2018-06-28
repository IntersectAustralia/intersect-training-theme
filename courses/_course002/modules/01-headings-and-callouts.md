---
layout: module
show-in-nav-bar: true
short-title: "Mod. 1"
title:  "Headings and callouts"
show-objectives: false
objectives:
- Demonstrate how to create headings and how they appear
- Demonstrate notes, warnings, next module, finishing and insets
show-in-outline: true
outline-number: 1
---

Welcome. This page will show the basic styling available.


Firstly, on pages where the `module` layout is used (like this one), the page title will be automatically shown in the top of the page. You can control the title, and several other parameters, for example *Learning objectives* through the *YAML frontmatter* at the top of the page (between the `---` symbols). See the YAML frontmatter module in the theme structure course for more information.

# Headings
Most content is written in standard markdown format. For example, to insert headings use the `#` symobl at the start of a line, like this:

~~~
# This is header 1
## This is header 2
### This is header 3
#### This is header 4
~~~
{: .source}

Which will render like this:

# This is header 1
## This is header 2
### This is header 3
#### This is header 4


# Notes and warnings

Sometimes you want a block of text to stand out. This theme supports *note* and *warning* tags to highlight paragraphs.

To use a note, put some text on a newline, then put `{: .note}` directly after. This tells kramdown to style the text above using a css class called `note`.

For example:
```
I have something important to say.
{: .note}
```
{: .source}

Will render like this:

I have something important to say.
{: .note}

Got a warning for your readers? Use `{: .warning}`. For example:

```
**WARNING**: Don't stand under coconut trees!
{: .warning}
```
{: .source}

Will render like this (note the use of double asterisks `**` to bold text).

**WARNING**: Don't stand under coconut trees!
{: .warning}


# Insets

Examples and exercises often need their own syling to make them stand out. Thse are best placed in an `{: .inset}`. This will give you a nice bordered background to distinguish this from other text. Note that headings

```
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tempus nulla at purus placerat dignissim. Suspendisse molestie vel felis in fermentum. Cras viverra nunc sit amet maximus pretium.
{: .inset}
```
{: .source}

Will render like this:

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tempus nulla at purus placerat dignissim. Suspendisse molestie vel felis in fermentum. Cras viverra nunc sit amet maximus pretium.
{: .inset}

Note that if you want to include headers or linebreaks within your inset you will need to group all elements together by nesting them within a blockquote, created with the greater than (`>`) character. This is because the kramdown styling tags `{: .sometag}` will only apply to the immediately preceeding element. Using blockquotes creates a group of elements that can be styled in the same way.

 For example:

 ```
 > # Lorem ipsum filler text
 >
 > Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tempus nulla at purus placerat dignissim. Suspendisse molestie vel felis in fermentum. Cras viverra nunc sit amet maximus pretium.
 {: .inset}
 ```
 {: .source}

 Will render like this:

 > # Lorem ipsum filler text
 >
 > Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tempus nulla at purus placerat dignissim. Suspendisse molestie vel felis in fermentum. Cras viverra nunc sit amet maximus pretium.
 {: .inset}

If you really want to, you can also next blockquotes under other blockquotes to combine more styling. This is especially useful if you want to create codeblocks inside an inset.

```
> # Lorem ipsum filler text
>
> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tempus nulla at purus placerat dignissim. Suspendisse molestie vel felis in fermentum. Cras viverra nunc sit amet maximus pretium.
>
>> Use multiple `>` characters to combine many types of styles
> {: .note}
{: .inset}
```
{: .source}

Will render like this:

> # Lorem ipsum filler text
>
> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tempus nulla at purus placerat dignissim. Suspendisse molestie vel felis in fermentum. Cras viverra nunc sit amet maximus pretium.
>
>> Use multiple `>` characters to combine many types of styles
> {: .note}
{: .inset}


# Finishing a module
At the end of a module you should do one of two things:


Tell people to go to the next module with `{: .next-link}`:

```
[Go to the next module]({{ site.baseurl }}/modules/02-styling)
{: .next-link}
```
{: .source}

Which appears as:

[Go to the next module](./02-code-blocks)
{: .next-link}


... or ...

```
Say **congratulations** and show your readers a picture of a cake with the `{: .finished}` tag.
{: .finished}
```

Say **congratulations** and show your readers a picture of a cake with the `{: .finished}` tag.
{: .finished}


Congratulations, you've made it to the end of this module!

Have a cake :)
{: .finished}
