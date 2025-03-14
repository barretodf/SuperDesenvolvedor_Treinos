require_relative 'uniflex/converter'
require_relative 'uniflex/unit_store'
require_relative '../lib/uniflex'
require_relative 'uniflex/version' 

module UniFlex
  
  def self.add_unit(name, base:, factor:)
    UnitStore.add_custom_unit(name, base: base, factor: factor)
  end

  
  def self.convert(value, from:, to:)
    from_unit = UnitStore.get_unit(from)
    to_unit = UnitStore.get_unit(to)

    raise ArgumentError, "Unidade '#{from}' desconhecida" unless from_unit
    raise ArgumentError, "Unidade '#{to}' desconhecida" unless to_unit

    base_value = value * from_unit[:factor]
    target_value = base_value / to_unit[:factor]
    target_value
  end
end
