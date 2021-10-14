# frozen_string_literal: true

require_relative "lib/frostyid/version"

Gem::Specification.new do |spec|
  spec.name          = "frostyid"
  spec.version       = Frostyid::VERSION
  spec.authors       = ["Sönke \"Cubuzz\" Köster"]
  spec.email         = ["skoester@cubuzz.de"]

  spec.summary       = "FrostyID is a snowflake-style string generator."
  spec.description   = "As a convenient tool to generate snowflake strings according to your needs, FrostyID allows you to quickly get things up and running."
  spec.homepage      = "https://frostyid.culabs.eu"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/cubuzz/frostyid"
  spec.metadata["changelog_uri"] = "https://frostyid.culabs.eu/changelog"

  spec.require_paths = ["lib"]

  spec.files = ["lib/frostyid.rb", "lib/frostyid/version.rb"]
end
