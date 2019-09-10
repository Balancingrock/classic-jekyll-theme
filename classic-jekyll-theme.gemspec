# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "classic-jekyll-theme"
  spec.version       = "2.5.0"
  spec.authors       = ["Rien"]
  spec.email         = ["rien@balancingrock.nl"]

  spec.summary       = %q{A responsive 1, 2 or 3 column theme for wide, medium and narrow displays with drop(down) menu.}
  spec.description   = "A responsive 1, 2 or 3 column theme for wide, medium and narrow with drop(down) menu. The three columns are reordered as necessary to match the display width. Includes a menu bar generator, a category page generator, a default cookie warning for European sites and much more. The three columns consist of 1 primary column, a secondary column and a tertiary column. The secondary column can be placed either to the right or left of the primary column. The tertiary column is on the other side. The secondary and tertiary columns can be disabled. This theme uses normalize.css."
  spec.homepage      = "https://rubygems.org/gems/classic-jekyll-theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|icons|pages|_layouts|_includes|_sass|_data|LICENSE|README|navbanner)}i) }
  
  spec.add_runtime_dependency "jekyll", "> 3.6", "< 5.0"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.8"
  spec.add_runtime_dependency "jekyll-data", ">= 1.0", "< 2.0"
  
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.0"
end
