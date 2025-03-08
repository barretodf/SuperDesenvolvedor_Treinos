require 'date'

module Financify
  class Transaction
    attr_reader :valor, :tipo, :categoria, :data, :descricao, :moeda

    # Definindo moedas aceitáveis
    MOEDAS_ACEITAS = ["BRL", "USD", "EUR"]
    
    # Tabelas de taxas de câmbio
    TAXAS_CAMBIO = {
      "BRL_TO_USD" => 0.20,
      "BRL_TO_EUR" => 0.18,
      "USD_TO_BRL" => 5.0,
      "USD_TO_EUR" => 0.90,
      "EUR_TO_BRL" => 5.5,
      "EUR_TO_USD" => 1.10
    }

    def initialize(valor, tipo, categoria, data, descricao = "", moeda = "BRL")
      # Verifica se o tipo da transação é válido
      raise ArgumentError, "Tipo inválido!" unless [:receita, :despesa].include?(tipo)
      
      # Verifica se o valor da transação é positivo
      raise ArgumentError, "Valor deve ser positivo!" if valor <= 0
      
      # Verifica se a moeda informada é válida
      raise ArgumentError, "Moeda inválida! Use: #{MOEDAS_ACEITAS.join(', ')}" unless MOEDAS_ACEITAS.include?(moeda)

      # Inicializa os atributos da transação
      @valor = tipo == :despesa ? -valor : valor
      @tipo = tipo
      @categoria = categoria
      @data = Date.parse(data)
      @descricao = descricao
      @moeda = moeda
    end

    # Método para converter o valor para outra moeda
    def converter_para(nova_moeda)
      # Se a moeda já for a desejada, não faz a conversão e retorna o valor original
      return @valor if nova_moeda == @moeda

      # Gera a chave da taxa de câmbio no formato "ORIGEM_TO_DESTINO"
      chave = "#{@moeda}_TO_#{nova_moeda}".upcase
      
      # Obtém a taxa de câmbio a partir da chave
      taxa = TAXAS_CAMBIO[chave]

      # Se não encontrar a taxa de câmbio para a conversão, levanta um erro
      raise ArgumentError, "Conversão de moeda não suportada!" unless taxa

      # Retorna o valor convertido, arredondado para 2 casas decimais
      (@valor * taxa).round(2)
    end
    def to_s
      "Tipo: #{@tipo.capitalize}, Valor: #{@valor} #{@moeda}, Categoria: #{@categoria}, Data: #{@data}, Descrição: #{@descricao}"
    end
  end
end
