# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'css_compressor/version'

Gem::Specification.new do |spec|
  spec.name          = "css_compressor"
  spec.version       = CssCompressor::VERSION
  spec.authors       = ["Rodrigo Alves"]
  spec.email         = ["rodrigovieira1994@gmail.com"]
  spec.summary       = %q{CSS file compressor in Ruby}
  spec.description   = %q{A Ruby gem for compressing CSS files}
  spec.homepage      = "https://github.com/rodrigoalvesvieira/css_compressor"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
