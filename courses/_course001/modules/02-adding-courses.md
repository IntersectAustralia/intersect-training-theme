---
layout: module
show-in-nav-bar: true
short-title: "Mod. 2"
title:  "Adding courses"
show-objectives: false
objectives:
- Describe the directory structure of a course
- Understand how to create new courses
show-in-outline: true
outline-number: 2
---

Here we look at how to create a new course.

# Step 1 - Create the directory structure
The first step is to create a skeleton structure. You can do this either manually, or by copying the directory structure in the `courses/_template` folder of this theme. In either case, the directory structure should look like this:

```shell
courses/
    _courseID/
      index.md
      instructor-notes.md
      assets/
        figure01.png
      modules/
        01-some-module.md
      src/
        some-code.sh
```


Note that the course sub-directory should reside under the `courses` directory, and must be prefixed with an undercore. Their are three key components to the course directory structure:


1. `index.md`: This file is the homepage for the course. Each course should have it's own `index.md` file, which is automatically rendered on navigation to the URL path to the course. Do not confuse this with the `index.md` file in the site root directory, which is the homepage for the entire site. Course homepages should have a layout type of `course-home`. See the YAML frontmatter module for more options.
2. `instructor-notes.md`: Have content that you don't want made publicly available? Put it in an instructor_notes file use `published: false` in the YAML frontmatter
2. `assets/`: Put all the imagery used in the course here.
3. `modules`: All the course lesson content goes here. Create one markdown file per module, and number them in the order you want them to appear in the navbar (it is a good idea to zero-pad the filename to ensure the order - i.e. use `01-myfile.md` instead of just `1-myfile.md`). Each module file should have the layout of type `module`. See the YAML frontmatter module for more options.
4. `src/`: Put any code, data or other things supporting the course here

# Step 2 - Modify the \_config.yml file
The second (and last step) is to create a new Jekyll collection for the course. To do this, append an extra entry to the `_config.yml` file (underneath `collections:`) in the site root directory. Use the following as a guide:

```shell
collections:
  template:    # A unique ID for the course. Must match a directory name (without the `_` prefix)
    output: true  # Tell Jekyll to render files in the collection
    title: "Course template"    # The actual name for the course
    description: "A copyable directory structure useful as a base for creaing new courses"   # A short description of your site
    relative_url: "/template"    # The subpath of the the site, e.g. /course-001
    permalink: /template/:path   # Will render links in format '<course-url>/<document-path>/<base-filename>'
    licence: "This course is released under a catfish wattleburger licence"   # A statement of the licencing conditions of your site
```
