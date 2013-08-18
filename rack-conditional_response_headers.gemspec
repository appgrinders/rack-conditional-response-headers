# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/conditional_response_headers/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-conditional_response_headers"
  spec.version       = Rack::ConditionalResponseHeaders::VERSION
  spec.authors       = ["Yarin Kessler"]
  spec.email         = ["ykessler@appgrinders.com"]
  spec.description   = %q{Rack middleware: Sets response headers based on matching URL conditions}
  spec.summary       = %q{Rack middleware: Sets response headers based on matching URL conditions}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
