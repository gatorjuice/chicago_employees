# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chicago_employees/version'

Gem::Specification.new do |spec|
  spec.name          = "chicago_employees"
  spec.version       = ChicagoEmployees::VERSION
  spec.authors       = ["Jamie"]
  spec.email         = ["gatorjuice@gmail.com"]

  spec.summary       = %q{A Ruby gem wrapper for the chicago employees API}
  spec.description   = %q{returns ruby employee objects based on chicago JSON data}
  spec.homepage      = "https://github.com/gatorjuice/hand_dryer"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "unirest", "1.1.2"
end
