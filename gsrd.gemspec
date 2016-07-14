# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gsrd/version'

Gem::Specification.new do |spec|
  spec.name          = "gsrd"
  spec.version       = Gsrd::VERSION
  spec.authors       = ["Leonardo Cardoso"]
  spec.email         = ["leo@leocardz.com"]

  spec.summary       = %q{GitHub Starred Repos Downloader}
  spec.description   = %q{This gem downloads your public starred repos. Just in case you want to keep a backup of them from time to time}
  spec.homepage      = "https://github.com/LeonardoCardoso/gsrd"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'httparty', '~> 0.13.7'
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
