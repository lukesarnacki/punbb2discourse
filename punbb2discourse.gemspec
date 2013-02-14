# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'punbb2discourse/version'

Gem::Specification.new do |gem|
  gem.name          = "punbb2discourse"
  gem.version       = Punbb2discourse::VERSION
  gem.authors       = ["Lukasz Sarnacki"]
  gem.email         = ["lukesarnacki@gmail.com"]
  gem.description   = %q{Punbb to discourse migrator}
  gem.summary       = %q{Migrates data from punbb forum to discourse}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_development_dependency "pg"
end
