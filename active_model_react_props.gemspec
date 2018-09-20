$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "active_model_react_props/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "active_model_react_props"
  s.version     = ActiveModelReactProps::VERSION
  s.authors     = ["Kevin Finn"]
  s.email       = ["kevin@relevant.healthcare"]
  s.summary     = "Tools to convert models to react props"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "5.0.7"

  s.add_development_dependency "rubocop", "~> 0.49.1"
end
