# frozen_string_literal: true

require_relative "lib/mcm_phone_number_generator/version"

Gem::Specification.new do |spec|
  # Basic gem information
  spec.name          = "mcm_phone_number_generator"
  spec.version       = McmPhoneNumberGenerator::VERSION
  spec.authors       = ["Joanna"]
  spec.email         = ["info@mycountrymobile.com"]

  spec.summary       = "A Ruby gem for interacting with My Country Mobile's Phone Number Generator tool."
  spec.description   = "This gem allows developers to programmatically generate phone numbers using My Country Mobile's API. "\
                       "It supports country-specific and type-specific phone number generation with easy Ruby integration."
  spec.homepage      = "https://www.mycountrymobile.com/tools/phone-number-generator/"
  spec.license       = "MIT"

  # Ruby version requirement
  spec.required_ruby_version = ">= 3.1.0"

  # Metadata for RubyGems.org
  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["homepage_uri"]      = spec.homepage
  spec.metadata["source_code_uri"]   = "https://github.com/khanaariyan/mcm_phone_number_generator"
  spec.metadata["changelog_uri"]     = "https://github.com/khanaariyan/mcm_phone_number_generator/blob/main/CHANGELOG.md"

  # Files to include in the gem
  spec.files         = Dir["lib/**/*.rb"] + ["README.md", "CHANGELOG.md", "LICENSE.txt"]
  spec.require_paths = ["lib"]

  # Executable (CLI) information, if applicable
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }

  # Dependencies
  spec.add_dependency "httparty", "~> 0.20.0"  # HTTP library for API interaction
  spec.add_dependency "json", "~> 2.6"         # For JSON parsing

  # Development dependencies (optional, for contributing developers)
  spec.add_development_dependency "rspec", "~> 3.12"  # For testing
  spec.add_development_dependency "rubocop", "~> 1.30" # For linting

  # Documentation (optional)
  # Add any documentation links if you generate documentation with tools like YARD or RDoc
end
