
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "test_gem2_dh/version"

Gem::Specification.new do |spec|
  spec.name          = "test_gem2_dh"
  spec.version       = TestGem2Dh::VERSION
  spec.authors       = ["test_gem2"]
  spec.email         = [""]

  spec.summary       = %q{test gem}
  spec.description   = %q{test gem Only HelloWorld}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
