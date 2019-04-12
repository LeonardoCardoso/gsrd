# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gsrd/version'

spec = Gem::Specification.new do |s|
  s.name         = "gsrd"
  s.version      = Gsrd::VERSION
  s.platform     = Gem::Platform::RUBY
  s.authors      = ["Leonardo Cardoso"]
  s.email        = ["leo@leocardz.com"]
  s.homepage     = "https://github.com/LeonardoCardoso/gsrd"
  s.summary      = %q{GitHub Starred Repos Downloader}
  s.description  = %q{This gem downloads your public starred repos. Just in case you want to keep a backup of them from time to time}
  s.files        = Dir["README.md", "LICENSE", "lib/**/*.rb", "bin/*"]
  s.require_path = "lib"
  s.executables   = ["gsrd"]
  s.license      = "MIT"
  s.required_ruby_version = ">= 1.9.3"
  s.add_dependency 'httparty'
  s.add_development_dependency "bundler"
  s.add_development_dependency "rake"
end