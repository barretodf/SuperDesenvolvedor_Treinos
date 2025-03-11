module UniFlex
  class UnitStore
    # Um hash que armazena as unidades e seus fatores
    @units = {
      meters: { base: :meters, factor: 1.0 },
      kilometers: { base: :meters, factor: 0.001 },
      miles: { base: :meters, factor: 0.000621371 },
      fahrenheit: { base: :celsius, factor: 5.0 / 9.0, offset: -32 },
      celsius: { base: :celsius, factor: 1.0 }
    }

    class << self
      # Método para adicionar unidades personalizadas
      def add_custom_unit(name, base:, factor:)
        @units[name] = { base: base, factor: factor }
      end

      # Método para obter uma unidade pelo nome
      def get_unit(name)
        @units[name]
      end
    end
  end
end
