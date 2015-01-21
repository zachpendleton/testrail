# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'testrail/version'

Gem::Specification.new do |spec|
  spec.name          = 'testrail'
  spec.version       = Testrail::VERSION
  spec.authors       = ['Zach Pendleton']
  spec.email         = ['zachpendleton@gmail.com']
  spec.summary       = %q{A gem wrapper for the Gurock TestRail client}
  spec.homepage      = 'https://github.com/zachpendleton/testrail'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
