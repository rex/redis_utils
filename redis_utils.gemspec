# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'redis_utils/version'

Gem::Specification.new do |spec|
  spec.name          = "redis_utils"
  spec.version       = RedisUtils::VERSION
  spec.authors       = ["Pierce Moore"]
  spec.email         = ["me@prex.io"]
  spec.summary       = %q{A library intended to take some of the pain out of Redis CRUD operations.}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "coveralls"
  spec.add_runtime_dependency "redis"
  spec.add_runtime_dependency "hiredis"
end
