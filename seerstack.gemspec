# frozen_string_literal: true

require_relative "lib/seerstack/version"

Gem::Specification.new do |s|
  s.name = "seerstack"
  s.version = Seerstack::VERSION
  s.summary = "Ruby library to access the Seerstack API"
  s.authors = ["Seerstack"]
  s.email = ""
  s.homepage = "https://gemdocs.org/gems/seerstack"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/dqnamo/seerstack-ruby"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.2.0"

  s.files = Dir[
    "lib/**/*.rb",
    "rbi/**/*.rbi",
    "sig/**/*.rbs",
    "manifest.yaml",
    "SECURITY.md",
    "CHANGELOG.md",
    ".ignore"
  ]
  s.extra_rdoc_files = ["README.md"]
  s.add_dependency "cgi"
  s.add_dependency "connection_pool"
end
