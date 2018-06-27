---
layout: module
show-in-nav-bar: true
short-title: "Mod. 3"
title:  "YAML frontmatter"
show-objectives: true
objectives:
- Understand the layouts available
- Understand how to use YAML frontmatter to tailor the look of each page
show-in-outline: true
outline-number: 3
---

Every module file, and most other markdown files in your course will need to include [YAML](http://yaml.org/) at the top of the file. This is called *[YAML frontmatter](https://jekyllrb.com/docs/frontmatter/)*.

This needs to be at the very top of the file - between the triple dashed `---` lines. The parameters that are set here depend mostly on the layout of the file. This page describes the supported layouts and how to apply them.

# Site home layout
Usually this will only apply to the `index.md` file in the site root directory.
This layout supports the following parameters:

```
---
layout: home                    # This sets the layout to be used
---
```


# Course home layout
The course home layout should be used for the `index.md` file in the root directory of each course.
This layout supports the following parameters:

```
--
layout: course-home               # This sets the layout to be used
show-in-navbar: true             # Determine whether to show this page in the navigation bar in the site header
short-title: "Home"               # Set the text to appear in the nav bar
title: Introduction to the Theme Structure                       # This will appear in title font at the top of the page
show-outline-table: true                # Determine whether to show an outline table at the end of the page content
---
```


# Module layout
The module layout should be used for each markdown file in the `modules` directory of each course.
This layout supports the following parameters:

```
--
layout: modules                   # This sets the layout to be used
show-in-navbar: true              # Determine whether to show this page in the navigation bar in the site header
short-title: "Mod. 3"             # Set the text to appear in the nav bar
title: "YAML Frontmatter"         # This will appear in title font at the top of the page
show-objectives: false            # Determine whether to show a list of learning objectives at the top of the page content
objectives:                       # Nested list of objectives
- Understand the layouts available
- Understand how to use YAML frontmatter to tailor the look of each page
show-in-outline: true             # Determine whether to list in the outline table in the course home
outline-number: 3                 # The module number to display in the outline table. Use blank for none.
---
```
