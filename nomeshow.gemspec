# frozen_string_literal: true

require_relative "lib/nomeshow/version"

Gem::Specification.new do |spec|
  spec.name = "nomeshow"
  spec.version = Nomeshow::VERSION
  spec.authors = ["TODO: Edmilson S. Barreto"]
  spec.email = ["TODO: edsb1981@gmail.com"]

  spec.summary = "Gerador de nomes aleatórios"
  spec.description = "No campo de texto o usuário digita o texto que ele pretende gerar com nomes diversos e ao clicar no botão esses nomes são gerados."
  spec.homepage = "TODO: https://github.com/barretodf?tab=repositories."
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
