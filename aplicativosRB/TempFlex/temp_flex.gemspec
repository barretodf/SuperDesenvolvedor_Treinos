Gem::Specification.new do |spec|
  spec.name          = "temp_flex"
  spec.version       = "0.1.0"
  spec.authors       = ["Edmilson Barreto"]
  spec.email         = ["edsb1981@gmail.com"]

  spec.summary       = "Um conversor simples de temperatura entre Celsius e Fahrenheit."
  spec.description   = "TempFlex é uma gem Ruby para conversão de temperatura entre Celsius, Fahrenheit e, futuramente, Kelvin."
  spec.homepage      = "https://github.com/barretodf?tab=repositories"
  
  spec.license       = "Edmilson Barreto"
  spec.required_ruby_version = ">= 3.3.7"
  
  spec.files         = Dir["lib/**/*"]
  spec.require_paths = ["lib"]
end
