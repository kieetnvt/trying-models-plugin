$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "trying_models/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "trying_models"
  s.version     = TryingModels::VERSION
  s.authors     = ["Kiet Nguyen"]
  s.email       = ["kietdev38@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "acts_as_tryable"
  s.description = "acts_as_tryable"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "sqlite3"
end
