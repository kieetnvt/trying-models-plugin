$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "trying_models/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "trying_models"
  s.version     = TryingModels::VERSION
  s.authors     = ["Kiet Nguyen"]
  s.email       = ["kietdev38@gmail.com"]
  s.homepage    = "https://github.com/tuankiet/trying-models-plugin"
  s.summary     = "Customize active_support instance methods to not raise error when call anomyous method name in instance variable"
  s.description = "Customize active_support instance methods to not raise error when call anomyous method name in instance variable"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "sqlite3"
end
