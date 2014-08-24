# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubyemail/version'

Gem::Specification.new do |spec|
  spec.name          = "rubyemail"
  spec.version       = Rubyemail::VERSION
  spec.authors       = ["William Miles"]
  spec.email         = ["william@miles.dk"]
  spec.summary       = "Ruby email parser"
  spec.description   = "Ruby email parser - unmarshals an email message into message, body, bodyparts and headerfield objects"
  spec.homepage      = "https://github.com/mawiza/rubyemail"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
