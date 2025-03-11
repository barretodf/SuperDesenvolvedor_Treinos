# frozen_string_literal: true

require_relative "lib/uniflex/version"

Gem::Specification.new do |spec|
  spec.name          = "uniflex"
  spec.version       = "0.1.0"
  spec.authors       = ["Edmilson Barreto"]
  spec.email         = ["edsb1981@gmail.com"]

  spec.summary       = "Uma gem para conversão de unidades de medida, incluindo personalizações."
  spec.description   = "UniFlex permite converter unidades de temperatura, distância, peso e definir novas unidades personalizadas dinamicamente."
  spec.homepage      = "https://github.com/barretodf"
  spec.license       = "MIT"

  spec.required_ruby_version = ">= 2.7"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/CHANGELOG.md"

  spec.files         = Dir["lib/**/*.rb"] + ["README.md"]
  spec.require_paths = ["lib"]

  spec.add_dependency "rspec" # Para testes
end
