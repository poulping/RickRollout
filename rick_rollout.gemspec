# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rick_rollout/version'

Gem::Specification.new do |spec|
  spec.name          = "rick_rollout"
  spec.version       = RickRollout::VERSION
  spec.authors       = ["poulping"]
  spec.email         = ["arnaud@godynamo.com"]

  spec.summary       = 'Thin wrapper around the Rollout gem, easily enabled / disabled'
  spec.description   = 'Rick Rollout allows you to extend its base class and have flags to enable features in production or locally'
  spec.homepage      = "https://github.com/DynamoMTL/RickRollout"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
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

  spec.add_runtime_dependency 'rollout', '~> 2.3'
  spec.add_runtime_dependency 'redis'

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
