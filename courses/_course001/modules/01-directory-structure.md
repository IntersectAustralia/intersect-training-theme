---
layout: module
show-in-nav-bar: true
short-title: "Mod. 1"
title:  "Directory structure"
show-objectives: false
objectives:
- Describe the directory structure of this site
- Describe how configuration settings can be customised
show-in-outline: true
outline-number: 1
---

Welcome. This module describes the directory structure of the this theme, which looks like this:

```shell
_config.yml
index.md
assets/
    css/
    icons/
    logos/
courses/
    _course001/
    _course002/
    _template/
```

If you see other directories you should leave them as is unless you are trying to customise the theme.

Description:
- `_config.yml`: Contains configuration variables specific to a single site. If you are creating a new site you will need to alter the values under `SITE SETTINGS` and `COLLECTIONS` to reflect your site content. You probably should not alter the `BUILD SETTINGS` unless you know what you are doing.
- `index.md`: This is the homepage for the entire site. It should have a layout of type `home`. You should override this with your own content and descriptions, most likely including links and information to each of your courses.
- `assets/`: Contains the styling and imagery used in the site. The main thing to update are logos in `assets/logos/`. The simplest way to change this is to overwrite the files in this directory (creating it if necessary) with your own images. If you want to change the styling modify `assets/site.scss` (note that this imports Bootstrap and Rouge from the `_sass` directory).
- `courses/`: The directory that holds the material for each course. If you change the name of this directory you will need to update the `_config.yml` accordingly. Each sub-directory should uniquely identify a single course. This site contains three such courses (course001, course002 and template). All sub-directory names here must be prefixed with an underscore `_` for Jekyll to locate them.

Note that the course-subdirectory never appears in the URL of the rendered site, so feel free to call it whatever you like.
{: .note}
