# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 's_builder/version'

Gem::Specification.new do |spec|
  spec.name          = "s_builder"
  spec.version       = SBuilder::VERSION
  spec.authors       = ["Martin Becker"]
  spec.email         = ["mbeckerwork@gmail.com"]

  spec.summary       = %q{Build Random Sentences}
  spec.description   = %q{Use this gem to buld random sentences}
  spec.homepage      = "https://github.com/Thermatix/sentence_builder"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
