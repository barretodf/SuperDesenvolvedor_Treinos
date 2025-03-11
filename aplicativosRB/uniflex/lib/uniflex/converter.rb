module UniFlex
  class Converter
    def initialize
      @value = 0
    end

    def convert(value, from:, to:)
      from_unit = UnitStore.get_unit(from)
      to_unit = UnitStore.get_unit(to)

      raise ArgumentError, "Unidade '#{from}' desconhecida" unless from_unit
      raise ArgumentError, "Unidade '#{to}' desconhecida" unless to_unit
      raise ArgumentError, "Não é possível converter entre bases diferentes" unless from_unit[:base] == to_unit[:base]

      
      if from_unit[:base] == :celsius
        return convert_temperature(value, from, to)
      end

      result = (value / from_unit[:factor]) * to_unit[:factor]

      
      puts "Conversão: #{value} #{from} -> #{result} #{to}"

      result
    end

    private

    def convert_temperature(value, from, to)
      from_unit = UnitStore.get_unit(from)
      to_unit = UnitStore.get_unit(to)

      celsius_value = (value + from_unit[:offset]) * from_unit[:factor]
      (celsius_value / to_unit[:factor]) - to_unit[:offset]
    end
  end
end
