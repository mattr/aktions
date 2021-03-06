lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "aktions/version"

Gem::Specification.new do |spec|
  spec.name          = "aktions"
  spec.version       = Aktions::VERSION
  spec.authors       = ["Matt Redmond"]
  spec.email         = ["matt.redmond@katalyst.com.au"]

  spec.summary       = "Action/Command/Interactor pattern implementation"
  spec.description   = "Aktions provides a simple and unopinionated interactor pattern for extracting complex business logic"
  spec.homepage      = "https://github.com/kataylst/aktions"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0.1"
  spec.add_development_dependency "rspec", "~> 3.9.0"
  spec.add_development_dependency "rubocop-performance", "~> 1.5.1"
  spec.add_development_dependency "rubocop-rspec", "~> 1.37.1"
  spec.add_development_dependency "simplecov", "~> 0.17.1"
end
