# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'RubyWings/version'

Gem::Specification.new do |spec|
  spec.name          = 'RubyWings'
  spec.version       = RubyWings::VERSION
  spec.authors       = ['Gerrit Visscher']
  spec.email         = ['gerrit@visscher.de']
  spec.summary       = %q{A collection of small ruby core extensions}
  spec.description   = %q{This gem extends some core classes for convenience. See README.md for more details.}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
