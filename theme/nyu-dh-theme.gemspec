# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "nyu-dh-theme"
  spec.version       = "0.1.0"
  spec.authors       = ["mnyrop"]

  spec.summary       = ""
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|_posts|blog|LICENSE|README|package|node_modules|favicon)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.2"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.7"

  spec.add_development_dependency "rake", "~> 12.0"
end
