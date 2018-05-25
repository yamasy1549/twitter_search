
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "twitter_search/version"

Gem::Specification.new do |spec|
  spec.name          = "twitter_search"
  spec.version       = TwitterSearch::VERSION
  spec.authors       = ["yamasy1549"]
  spec.email         = ["sanae@yamasy.info"]

  spec.summary       = "twitter search wrapper"
  spec.description   = "twitter search wrapper"
  spec.homepage      = "https://github.com/yamasy1549/twitter_search"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"

  spec.add_dependency "dotenv"
  spec.add_dependency "twitter"
end
