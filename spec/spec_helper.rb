<<<<<<< HEAD
# spec/spec_helper.rb

# Adiciona a pasta 'lib' ao $LOAD_PATH para que o Ruby consiga encontrar o arquivo 'nomeshow.rb'
$LOAD_PATH.unshift File.expand_path("../lib", __dir__)

require "nomeshow"  # Isso procura por 'lib/nomeshow.rb'

RSpec.configure do |config|
  # Configurações adicionais do RSpec, se necessário
end