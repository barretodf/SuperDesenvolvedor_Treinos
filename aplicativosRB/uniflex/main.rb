require_relative 'lib/uniflex/unit_store'
require_relative 'lib/uniflex/converter'

converter = UniFlex::Converter.new
result = converter.convert(10, from: :meters, to: :kilometers)
puts result
