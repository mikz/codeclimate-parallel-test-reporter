# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'code_climate/parallel/test_reporter/version'

Gem::Specification.new do |spec|
  spec.name          = "codeclimate-parallel-test-reporter"
  spec.version       = CodeClimate::Parallel::TestReporter::VERSION
  spec.authors       = ["Michal Cichra"]
  spec.email         = ["michal@o2h.cz"]
  spec.summary       = %q{Push parallel tests results to CodeClimate}
  spec.description   = %q{Wraps codeclimate-test-reporter to send parallel test results with ease}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency 'codeclimate-test-reporter'
end
