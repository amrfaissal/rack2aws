# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack2aws/version'

Gem::Specification.new do |spec|
  spec.name          = "rack2aws"
  spec.version       = Rack2Aws::VERSION
  spec.authors       = ["Faissal Elamraoui"]
  spec.email         = ["amr.faissal@gmail.com"]

  spec.summary       = %q{Teleport your files from Rackspace Cloud Files to AWS S3}
  spec.homepage      = "https://amrfaissal.github.io/rack2aws"
  spec.license       = "MIT"

  spec.files         = Dir['lib/**/*.rb']
  spec.bindir        = "bin"
  spec.executables   = ["rack2aws"]
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "commander", "~> 4.4", ">= 4.4.0"
  spec.add_runtime_dependency "fog", "~> 1.37", ">= 1.37.0"
  spec.add_runtime_dependency "artii", "~> 2.1", ">= 2.1.1"
  spec.add_runtime_dependency "mime-types", "<= 3.1"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 11.2.2"
  spec.add_development_dependency "rspec", "~> 3.4"
end
