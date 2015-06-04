# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rezort/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "rezort"
  gem.authors       = ["FA Trust"]
  gem.email         = ["is.trust@firstam.com"]
  gem.description   = "Makes sortable columns easy!"
  gem.summary       = "Makes sortable columns easy!"
  gem.homepage      = "http://sna9svascode1/Libraries/Rails-ReZort"

  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.version       = ReZort::VERSION

  gem.add_dependency('rails', '>= 3.0')

  gem.add_development_dependency('rspec-rails', '>= 2.12')
  gem.add_development_dependency('sqlite3', '>= 1.3')
  gem.add_development_dependency('json', '>= 1.6')

end
