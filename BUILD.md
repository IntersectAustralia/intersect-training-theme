
# Performing theme updates

Instructions for updating this theme.
1. Make changes to this theme locally.
2. Preview changes using `bundle exec jekyll serve`
3. Update the `intersect-training-theme.gemspec` file, including changing the version number. This does auto-version but should really control releases through GitHub too.
4. If necessary build the gem file using: `gem build intersect-training-theme.gemspec`.
5. Commit and push the changes to github on the `next_release` branch
6. Update any downstream repositories using this theme by pushing empty commits to force a site rebuild.
