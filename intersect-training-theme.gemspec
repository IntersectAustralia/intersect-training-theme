# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "intersect-training-theme"
  spec.version       = "0.3.0"
  spec.authors       = ["RichardPBerry, Intersect Australia"]
  spec.email         = ["training@intersect.org.au"]

  spec.summary       = "This theme provides a basic layout for presenting course materials"
  spec.homepage      = "https://github.com/IntersectAustralia/intersect-training-theme"
  spec.license       = "Nonstandard"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.7"
  spec.add_runtime_dependency "rouge", "~> 3.1"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
