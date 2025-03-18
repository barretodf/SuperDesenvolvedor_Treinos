require_relative "lib/contact/version"

Gem::Specification.new do |spec|
  spec.name          = "contact"
  spec.version       = Contact::VERSION
  spec.authors       = ["Seu Nome"]
  spec.email         = ["seu.email@example.com"]

  spec.summary       = "A CLI tool for managing contacts with CRUD operations and CSV export."
  spec.description   = "Contact is a Ruby Gem that provides a simple and efficient way to manage contacts via the command line, with features like adding, editing, deleting, searching, and exporting contacts to CSV."
  spec.homepage      = "https://github.com/barretodf" 
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = "https://github.com/barretodf/contact"
  spec.metadata["source_code_uri"] = "https://github.com/barretodf/contact/tree/main"
  spec.metadata["changelog_uri"] = "https://github.com/barretodf/contact/blob/main/CHANGELOG.md"

  spec.files         = Dir["{lib,exe}/**/*", "README.md", "LICENSE.txt"]
  spec.bindir        = "exe"
  spec.executables   = ["contact"]
  spec.require_paths = ["lib"]

  spec.add_dependency "thor", "~> 1.2"
  spec.add_dependency "csv", "~> 3.2"

  spec.add_development_dependency "rspec", "~> 3.0"
  spec.required_ruby_version = ">= 3.0"
end