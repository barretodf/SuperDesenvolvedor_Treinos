# run.rb
require_relative 'lib/uniflex/unit_store'
require_relative 'lib/uniflex/converter'

# Testando a conversão
converter = UniFlex::Converter.new
result = converter.convert(10, from: :meters, to: :kilometers)
puts result
