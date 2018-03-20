# intersect-training-theme

This repository is intended to be a master repository for managing site layouts for training courses

See the rendered site [here](https://intersectaustralia.github.io/intersect-training-theme/)

It's a work in progress...


## Installation

To use this site in github pages:
1. Create a new repository and enable GitHub pages. It's recommended to use the `master branch/docs` folder as the source, as this lets you have a private repository (for files you don't want publicly shared), while also allowing a public website in the `docs/` subfolder.
2. Add a `_config.yml` file to your repository, with the following lines:

```yaml
# Site settings
title: Your site title          # The title of your site
email: your_email@email.com     # Your email contact address
description: ""                 # A short description of your site
licence: ""                     # A statement of the licencing conditions of your site
baseurl: ""                     # the subpath of your site, e.g. /blog
url: ""                         # the base hostname & protocol for your site, e.g. http://example.com

# Build settings
remote_theme: "IntersectAustralia/intersect-training-theme"
markdown: kramdown
permalink: pretty
highlighter: rouge
remote_theme: "IntersectAustralia/intersect-training-theme"
```

Note that if you use the `master branch/docs` folder as your source, the yml file should be in `/docs`, if not it should be in the root of the repository.
3. Create your own image files to use in the header and footer of the page and place them in the following location:
  - `assets/logos/footer_logo.png`
  - `assets/logos/header_logo.png`
4. Add your markdown files and commit them to your repository. You should have at least an `index.md` file in the GitHub pages source directory.
5. GitHub pages will build your site for you on ever commit, so just visit the rendered site to see the theme at work.


## Usage

See the following for instructions on how to use this theme:
- **Module 1:** [Adding Modules](http://127.0.0.1:4000/intersect-training-theme/modules/01-adding-modules/)
- **Module 2:** [Styling](http://127.0.0.1:4000/intersect-training-theme/modules/02-styling/)

## License

With the exception of logos, this theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
