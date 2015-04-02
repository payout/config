$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ribbon/config/version"

Gem::Specification.new do |s|
  s.name        = 'ribbon-config'
  s.version     = Ribbon::Config::VERSION
  s.homepage    = "http://github.com/ribbon/config"
  s.license     = 'BSD'
  s.summary     = "A general purpose config utility to simplify and standardize configuration of ruby libraries."
  s.description = s.summary
  s.authors     = ["Robert Honer"]
  s.email       = ['robert@ribbonpayments.com']
  s.files       = Dir['lib/**/*.rb']

  s.add_development_dependency 'rspec'
end