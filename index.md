---
layout: home
---

Welcome. This site is a master repository for a Jekyll theme designed to hold course material.
It heavily utilises [Jekyll](https://jekyllrb.com/), [Kramdown](https://kramdown.gettalong.org/) and [Liquid Templates](https://shopify.github.io/liquid/) to greatly simplify writing course material in an efficient and web-presentable way.

It is also built on the [Bootstrap v4.1](https://getbootstrap.com/) framework to in order to utilise a common standard, add a lot of pre-built functionality, and to make it responsive.


Find the source repository for this theme here: [{{ site.repourl }}]({{ site.repourl}})

# Stuff To Do:
  - Fix heading styles to h1 is orange & page title is black - DONE
  - Add support for collapsible panels - DONE
  - Move objectives to YML front matter - DONE
  - Auto create index based on objectives in each module - DONE
  - Allow multiple courses in one repository - DONE
  - Add landing page for all site content - DONE
  - Convert px to rem in styling - DONE
  - Auto-add next link to modules - TOO HARD
  - Update footer to be course rather than site specific - DONE
  - Check title format and color of site-title hyperlink bar - DONE
  - Figure out image paths and make them better - DONE
  - Add private files for instructers - DONE
  - Setup template course - DONE
  - Try collections dir setting again - DONE
  - Documentation - DONE
  - Work out how to install and add to README.md
  - Deploy to GH


This site contains three mock courses that illustrate the main features of this site.
Click on one of the following to learn more about this theme.

<div class="card-deck">
  <div class="card">
    {% assign collection =  site.collections | where: "label", "course001" | first %}
    <img class="card-img-top" src="assets/logos/sub-brand.png" alt="{{ collection.label }}">
    <div class="card-body">
      <h4 class="card-title"> {{ collection.title }} </h4>
      <p class="card-text"> {{ collection.description }} </p>
      <a href="{{ collection.relative_url | relative_url }}" class="btn btn-primary"> Go to course </a>
    </div>
  </div>

  <div class="card">
    {% assign collection =  site.collections | where: "label", "course002" | first %}
    <img class="card-img-top" src="assets/logos/sub-brand.png" alt="{{ collection.label }}">
    <div class="card-body">
      <h4 class="card-title"> {{ collection.title }} </h4>
      <p class="card-text"> {{ collection.description }} </p>
      <a href="{{ collection.relative_url | relative_url }}" class="btn btn-primary"> Go to course </a>
    </div>
  </div>

  <div class="card">
    {% assign collection =  site.collections | where: "label", "template" | first %}
    <img class="card-img-top" src="assets/logos/sub-brand.png" alt="{{ collection.label }}">
    <div class="card-body">
      <h4 class="card-title"> {{ collection.title }} </h4>
      <p class="card-text"> {{ collection.description }} </p>
      <a href="{{ collection.relative_url | relative_url }}" class="btn btn-primary"> Go to course </a>
    </div>
  </div>
</div>
