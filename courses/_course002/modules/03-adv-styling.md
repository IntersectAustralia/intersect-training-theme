---
layout: module
show-in-nav-bar: true
short-title: "Mod. 3"
title:  "Advanced styling, challenges and solutions"
show-objectives: false
objectives:
- Demonstrate how to create collapsable text
- Demonstrate how to create challenge exercises
- Demonstrate how to create challenges with hidden solutions
show-in-outline: true
outline-number: 3
---

In this section we are going to look at how to include more advanced features you can use in your course content.

# Collapsible text

Being able to show and hide text is useful. Luckily, Bootstrap supports that and so does this theme!

The syntax for this is a little different than the what we have looked at so far, as here we are using the [Liquid](https://shopify.github.io/liquid/) templating language. Making text collapsible is a two step process.

#### Step 1: Creating the toggle button
We have a code snippet in the file `collapse.html` that we can call via Liquid to generate a button that toggles visibility of some text.

Our `Liquid` template takes two arguments:
1. `target-id`: The `ID` of the element whose visibility we want to toggle. IDs should be unique to the page.
2. `collapse-title`: The label to apply to the button. Default is `Solution`.

#### Step 2: Creating the content to hide
In addition to using a liquid template to insert the button, we also need to add some content that we want to hide. To do this, create the content is normal, then set both the ID and the class using `{: id="some-unique-id" .collapse}`. Note that the ID of this element must match exactly the `target-id` of the button created in step 1.

#### Example
Here is an example:

```
I have a secret, but I'll never tell you!
{% raw %}
{% include collapse.html target-id="my-sneaker-secret" collapse-title="Spill the beans" %}
{% endraw %}

I really like shoes.
{: id="my-sneaker-secret" .collapse}
```
{: .source}

When the site is built, {% raw %}`{% include collapse.html .... %}` {% endraw %} is replaced with the HTML in the file `collapse.html`.

The result is as follows:

I have a secret, but I'll never tell you!

{% include collapse.html target-id="my-sneaker-secret" collapse-title="Spill the beans" %}

I really like shoes.
{: id="my-sneaker-secret" .collapse}


# Challenges and solutions

Creating challenges is a little more...well...*challenging* than other writing other markdown. We can create consistent looking challenge/solution boxes using both kramdown styling, and the collapsible Liquid template outlined above.

#### Basic challenge box
Let's start out with just creating a challenge.

```
> # The Woodchucking challenge
> If a Woodcheck could check wood. How much wood would a Woodchuck check?
{: .challenge}
```
{: .source}

This creates a basic challenge box. Note that all headings (h1 to h6) in challenge boxes are set to a fixed size.

> # The Woodchucking challenge
> If a Woodcheck could check wood. How much wood would a Woodchuck check?
{: .challenge}


#### Challenge box with a solution
And now a challenge with the solution text hidden.

```
> # The Woodchucking challenge with solution
> If a Woodcheck could check wood. How much wood would a Woodchuck check?
> {% raw %}
> {%- include collapse.html target-id="woodchuck-solution" -%}
> {% endraw %}
>> As much wood as a Woodchuck could chuck, if a Woodchuck could chuck wood.
> {: id="woodchuck-solution" .collapse .solution}
{: .challenge}
```
{: .source}

> # The Woodchucking challenge with solution
> If a Woodcheck could check wood. How much wood would a Woodchuck check?
> {%- include collapse.html target-id="woodchuck-solution" -%}
>> As much wood as a Woodchuck could chuck, if a Woodchuck could chuck wood.
> {: id="woodchuck-solution" .collapse .solution}
{: .challenge}

#### Challenge box with codeblock in solution
And finally, let's put in a more complex example with codeblocks.

```
> # Navigating files and folders
> What is the output of `pwd` after roberto executes the following series of commands?
> ```shell
> cd ~
> mkdir foobar
> cd foobar
> cd ~/foobar/..
>```
> {% raw %}{%- include collapse.html target-id="tricky-cd" -%}{% endraw %}
>> ```shell
>> pwd
>> ```
>> {: .source}
>> Output:
>> ```
>> /home/roberto
>> ```
> {: id="tricky-cd" .collapse .solution}
{: .challenge}
```
{: .source}


> # Navigating files and folders
> What is the output of `pwd` after roberto executes the following series of commands?
> ```shell
> cd ~
> mkdir foobar
> cd foobar
> cd ~/foobar/..
>```
> {%- include collapse.html target-id="tricky-cd" -%}
>> ```shell
>> pwd
>> ```
>> {: .source}
>> Output:
>> ```
>> /home/roberto
>> ```
> {: id="tricky-cd" .collapse .solution}
{: .challenge}
