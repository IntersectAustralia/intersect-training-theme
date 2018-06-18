---
layout: module
number: 3
title:  "Advanced Styling"   # This will appear at the top of the page
short-title: "Mod. 3" # This will appear in the Nav bar in the header
is-listable: true
show-objectives: false
objectives:
- Objective 1
- Objective 2
---

In this section we are going to look at how to include more advanced features in your markdown.

# Collapsible text

Being able to show and hide text is useful. Luckily, bootstrap supports that and so does this theme!

The syntax for this is a little different than the what we have looked at so far as we are using the [liquid](https://shopify.github.io/liquid/) templating language. We have a code snippet in the file `collapse.html` that we can call via liquid to generate a button that toggles visibility of some text.

Using `liquid` the code snippet takes two arguments:
1. `target-id`: The `ID` of the markdown element that whose visibility we want to toggle
2. `collapse-title`: The label to apply to the button. Default is `Solution`.

Here is an example code fragment:

~~~
I have a secret, but I'll never tell you!

{% include collapse.html target-id="my-sneaker-secret" collapse-title="Spill the beans" %}

I really like shoes.
{: id="my-sneaker-secret" .collapse}
~~~

The result is as follows:

I have a secret, but I'll never tell you!

{% include collapse.html target-id="my-sneaker-secret" collapse-title="Spill the beans" %}

I really like shoes.
{: id="my-sneaker-secret" .collapse}


# Challenges and solutions


Creating challenges is a little more...well...*challenging* than other writing other markdown. We can create consistent looking challenge/solution boxes using the [*Liquid*](https://shopify.github.io/liquid/) templating language, which is used by Jekyll.

Let's start out with just creating a challenge.

> # The Woodchucking challenge
> If a Woodcheck could check wood. How much wood would a Woodchuck check?
{: .challenge}

Note that all headings (h1 to h6) in challenge boxes are a fixed size.

And now a challenge with the solution text hidden.

> # The Woodchucking challenge with solution
> If a Woodcheck could check wood. How much wood would a Woodchuck check?
> {%- include collapse.html target-id="woodchuck-solution" -%}
>> As much wood as a Woodchuck could chuck, if a Woodchuck could chuck wood.
> {: id="woodchuck-solution" .collapse .solution}
{: .challenge}


And finally, let's put in a more complex example with codeblocks.

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
