# frozen_string_literal: true

require_relative "lib/rubocop/view_component/version"

Gem::Specification.new do |spec|
  spec.name = "rubocop-view_component"
  spec.version = RuboCop::ViewComponent::VERSION
  spec.authors = ["Hans Lemuet"]
  spec.email = ["hans@etamin.studio"]

  spec.summary = "A RuboCop extension for ViewComponent"
  spec.homepage = "https://github.com/etaminstudio/rubocop-view_component"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/etaminstudio/rubocop-view_component"
  spec.metadata["changelog_uri"] = "https://github.com/etaminstudio/rubocop-view_component/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html

  spec.add_runtime_dependency 'rubocop'
end
