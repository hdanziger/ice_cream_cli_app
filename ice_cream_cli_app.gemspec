# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ice_cream_cli_app/version"

Gem::Specification.new do |spec|
  spec.name          = "ice_cream_cli_app"
  spec.version       = IceCreamCliApp::VERSION
  spec.authors       = ["'Hannah Danziger'"]
  spec.email         = ["'hdanziger8@gmail.com'"]

  spec.summary       = "Newest 3 ice creams from the top two brands."
  spec.description   = "Get info and details on new popular ice creams."
  spec.homepage      = "TODO: https://github.com/hdanziger/ice_cream_cli_app"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", ">= 0"
  spec.add_development_dependency "nokogiri", ">= 0"
  spec.add_development_dependency "pry", ">= 0"
end
