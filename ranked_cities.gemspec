# frozen_string_literal: true

require_relative "lib/ranked_cities/version"

Gem::Specification.new do |spec|
  spec.name          = "ranked_cities"
  spec.version       = RankedCities::VERSION
  spec.authors       = ["Victoria Thorsen"]
  spec.email         = ["victoriathorsenn@gmail.com"]

  spec.summary       = "Top 50 cities to live in this year"
  spec.description   = "Tells you information on each city"
  spec.homepage      = "https://github.com/victoriathorsen/cli_project_1"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/victoriathorsen/cli_project_1"
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  #Uncomment to register a new dependency of your gem
  spec.add_dependency "nokogiri"
  spec.add_dependency "open-uri"
  spec.add_dependency "pry"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
