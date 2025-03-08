# lib/financify/currency_converter.rb

module Financify
    class CurrencyConverter
      # Definindo taxas de conversão fictícias. Substitua com dados reais ou API.
      TAXAS_CONVERSAO = {
        "USD" => { "BRL" => 5.25, "EUR" => 0.85 },
        "EUR" => { "BRL" => 6.10, "USD" => 1.18 },
        "BRL" => { "USD" => 0.19, "EUR" => 0.16 }
      }
  
      def self.converter(valor, de, para)
        # Verificar se a taxa de conversão está disponível
        if TAXAS_CONVERSAO[de] && TAXAS_CONVERSAO[de][para]
          return valor * TAXAS_CONVERSAO[de][para]
        else
          raise ArgumentError, "Conversão não disponível para essa combinação de moedas"
        end
      end
    end
  end
  