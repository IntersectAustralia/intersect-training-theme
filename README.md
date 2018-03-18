# intersect-training-theme

This repository is intended to be a master repository for managing site layouts for training courses

See the rendered site [here](https://intersectaustralia.github.io/intersect-training-theme/)

It's a work in progress...


## Installation

To use this site in github pages:
1. Create a new repository and enable GitHub pages. It's recommended to use the `master branch/docs` folder as the source, as this lets you have a private repository (for files you don't want publicly shared), while also allowing a public website in the `/docs` subfolder.
2. Add a `_config.yml` file to your repository, with the following line:
 `remote_theme: "IntersectAustralia/intersect-training-theme"``
Note that if you use the `master branch/docs` folder as your source, this file should be in `/docs`, if not it should be in the root of the repository
3. Add your markdown files and commit them to your repository. You should have at least an `index.md` file in the GitHub pages source directory.
4. GitHub pages will build your site for you on ever commit, so just visit the rendered site to see the theme at work.

## Updating the themes
Notes for myself really
1. Make the changes locally.
2. If necessary build the gemspec file using: `gem build intersect-training-theme.gemspec`. This does auto-version but should really control releases through GitHub.
3. Commit and push the changes.

## Usage

TODO: Write usage instructions here. Describe your available layouts, includes, sass and/or assets.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/hello. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `intersect-training-theme.gemspec` accordingly.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
