# wordmeter.gemspec

Gem::Specification.new do |spec|
  spec.name          = "wordmeter"
  spec.version       = "0.1.0"
  spec.authors       = ["Edmilson Barreto"]
  spec.email         = ["edsb1981@gmail.com"]

  spec.summary       = "Um contador de palavras simples para Ruby."
  spec.description   = "WordMeter conta quantas palavras existem em um texto, de forma eficiente e fácil de usar."
  spec.homepage      = "https://github.com/barretodf/SuperDesenvolvedor_Treinos/tree/master/aplicativosRB"
  spec.license       = "MIT"

  spec.required_ruby_version = ">= 3.3.7"

  spec.files         = Dir["lib/**/*", "README.md", "LICENSE"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 3.0"
end
