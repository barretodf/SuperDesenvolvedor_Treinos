Gem::Specification.new do |spec|
  spec.name          = "timedrop"
  spec.version       = "0.1.0"
  spec.authors       = ["Edmilson Barreto"]
  spec.email         = ["seuemail@example.com"]

  spec.summary       = "Um cronômetro com contagem regressiva simples."
  spec.description   = "TimeDrop é uma gem Ruby que permite criar um cronômetro regressivo, com suporte para pausar, retomar e resetar a contagem."

  spec.homepage      = "https://github.com/seuusuario/timedrop"
  spec.license       = "MIT"

  spec.required_ruby_version = ">= 3.0.0"

  spec.files         = Dir["lib/**/*", "LICENSE", "README.md"]
  spec.require_paths = ["lib"]

  spec.add_dependency "rake", "~> 13.0"  # Dependência opcional para tarefas

  spec.executables = ["timedrop"]

end
