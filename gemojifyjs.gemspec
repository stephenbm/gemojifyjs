# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gemojifyjs/version'

Gem::Specification.new do |spec|
  spec.name          = "gemojifyjs"
  spec.version       = Gemojifyjs::VERSION
  spec.authors       = ["Stephen Breyer-Menke"]
  spec.email         = ["steve.bm@gmail.com"]
  spec.description   = %q{Gem for emojify.js}
  spec.summary       = %q{Gem for emojify.js}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
