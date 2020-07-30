# coding: utf-8
require File.expand_path('../lib/simple_line_icons/rails/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "simple_line_icons-rails"
  spec.version       = SimpleLineIcons::Rails::VERSION
  spec.authors       = ["cmm21"]
  spec.email         = ["chris.m.milbourne@gmail.com"]

  spec.summary       = "Use Simple Line Icons with Rails 4+"
  spec.description   = "This gem provides Simple Line Icons for your Rails 4+ application"
  spec.homepage      = "https://github.com/cmm21/rails-simple-line-icons"
  spec.license       = "MIT"

  # spec.files         = `git ls-files -z`.split("\x0").reject do |f|
  #   f.match(%r{^(test|spec|features)/})
  # end
  spec.files         = `git ls-files -- {app,bin,lib,test,spec}/* {LICENSE*,Rakefile,README*}`.split("\n")
  spec.test_files    = `git ls-files -- {test,spec}/*`.split("\n")
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 3.0"
  spec.add_dependency "sass", ">= 3.2"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.0"
end
