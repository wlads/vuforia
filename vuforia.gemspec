# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vuforia/version'

Gem::Specification.new do |spec|
  spec.name          = "vuforia"
  spec.version       = Vuforia::VERSION
  spec.authors       = ["Wladimir Braguini Domingues"]
  spec.email         = ["wladimir.braguini@gmail.com"]
  spec.summary       = %q{Vuforia Web Services API (VWS API) client}
  spec.description   = %q{The VWS API client was created to allow developers programmatically interact with Vuforia’s cloud recognition system. Use the VWS API client to upload image targets into the Vuforia system, add application metadata, and monitor the status of databases and targets.}
  spec.homepage      = "http://github.com/wlads/vuforia"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "httparty", "~> 0.13.3"
end
