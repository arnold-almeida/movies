# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'movies/version'


Gem::Specification.new do |spec|
  spec.name          = "movies"
  spec.version       = Movies::VERSION
  spec.authors       = ["Arnold Almeida"]
  spec.email         = ["arnold.almeida@gmail.com"]
  spec.description   = %q{movies description}
  spec.summary       = %q{movies summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.6"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "aruba"


  spec.add_dependency "thor"
end
