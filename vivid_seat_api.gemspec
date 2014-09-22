# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vivid_seat_api/version'

Gem::Specification.new do |spec|
  spec.name          = "vivid_seat_api"
  spec.version       = VividSeatApi::VERSION
  spec.authors       = ["chebyte"]
  spec.email         = ["mauro@hashdog.com"]
  spec.summary       = %q{Ruby Gem API for vividseats.com.}
  spec.description   = %q{This gem provides access to add, edit and delete listings appearing on Vivid Seats and it’s affiliates.}
  spec.homepage      = "http://hashdog.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency 'rake', '~> 0'
  spec.add_runtime_dependency 'faraday', '~> 0.9', '>= 0.9.0'
  spec.add_runtime_dependency 'json'
end
