# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'frappuccino-container/version'

Gem::Specification.new do |gem|
  gem.name          = "frappuccino-container"
  gem.version       = Frappuccino::Container::VERSION
  gem.authors       = ["John Brunton"]
  gem.email         = ["john_brunton@hotmail.co.uk"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""
  
  gem.add_dependency 'sprockets'
  gem.add_dependency 'coffee-script'
  gem.add_dependency 'sprocketize'
  gem.add_dependency 'sprockets'
  gem.add_dependency "railties", "~> 3.1"
  
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
