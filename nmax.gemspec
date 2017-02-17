# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nmax/version'

Gem::Specification.new do |spec|
  spec.name          = 'nmax'
  spec.version       = Nmax::VERSION
  spec.author        = ['Vasilisa Tyulberova']
  spec.email         = ['vasiliqa@rambler.ru']
  spec.platform      = Gem::Platform.local

  spec.summary       = 'Ruby gem for finding n maximum integers in file'
  spec.description   = 'Ruby gem for finding n maximum integers in file'
  spec.homepage      = 'https://github.com/vasiliqa/nmax'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.post_install_message = 'Thanks for installing nmax!'

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
