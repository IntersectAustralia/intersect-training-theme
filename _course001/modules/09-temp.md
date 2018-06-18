---
layout: module
number: 9
title:  "Temp"   # This will appear at the top of the page
short-title: "Mod. 9" # This will appear in the Nav bar in the header
is-listable: true
---



I have a secret, but I'll never tell you!

{% include collapse.html target-id="my-sneaker-secret" collapse-title="Spill the beans" %}
I really like shoes.
{: id="my-sneaker-secret" .collapse}


Some more Stuff


> # Challenge
> If a Woodcheck could check wood. How much wood would a Woodchuck check?
> {%- include collapse.html target-id="woodchuck-solution" -%}
>> As much wood as a Woodchuck could chuck, if a Woodchuck could chuck wood.
> {: id="woodchuck-solution" .collapse}
{: .objective}





> # Challenge
> If a Woodcheck could check wood. How much wood would a Woodchuck check?
> <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#woodchuck-solution"> Click me </button>
>> As much wood as a Woodchuck could chuck, if a Woodchuck could chuck wood.
> {: id="woodchuck-solution" .collapse}
{: .objective}
