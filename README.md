# Intersect Training Theme

This repository is intended to be a master repository for managing site layout and styling for training courses.

Key features:
- Support for multiple courses in one repository
- Responsive design using Bootstrap
- Support for various types of code blocks, hidden text, and callouts
- Automated outline of course structures
- Easy customisation of look and feel through Sassy css

See the rendered site for more information and detailed documentation: [https://intersectaustralia.github.io/intersect-training-theme](https://intersectaustralia.github.io/intersect-training-theme/)


# License

With the exception of logos (which are copyright Intersect Australia Ltd), this theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).


# Installation

To use this site in github pages:
1. Create a new repository and enable GitHub pages.
2. Copy the content of `_config.yml` in this repository to a `_config.yml` file in your own repository. Update it to reflect your own needs. Note that if you use the `master branch/docs` folder as your source, the yml file should be in `/docs`, if not it should be in the root of the repository.
3. Add the following to your `_config.yml` file (update the version tag to be the latest version number)
```yaml
remote_theme: IntersectAustralia/intersect-training-theme@v1.0.0
```
Note that while you don't *have* to specify a version, it is **highly** recommended.
4. Create your own image files to use in the header and footer of the page and place them in the following location:
  - `assets/logos/company_logo.png`
  - `assets/logos/sub-brand.png`
  - `assets/logos/favicon.png`
5. Add your markdown files and commit them to your repository. You should have at least an `index.md` file in the GitHub pages source directory. View the documentation on the [rendered site](https://intersectaustralia.github.io/intersect-training-theme/) to find more information.
6. GitHub pages will build your site on every commit, so just visit the rendered site to see the theme at work.

# Previewing Locally
The easiest way to preview your changes before publishing is to preview locally. To do this.
1. [Install Jekyll](https://jekyllrb.com/docs/installation/). The rest of these instructions assume you are using Bundler as preferred by the Jekyll documentation.
2. Clone your repository locally
3. Install the `jekyll-remote-theme` gem following the instructions [here](https://github.com/benbalter/jekyll-remote-theme)
4. Build all required gems: `bundle install`
5. Serve the site locally from the site root directory: `bundle exec jekyll serve`.
