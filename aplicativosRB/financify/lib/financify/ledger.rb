require_relative "transaction"
require "date"

module Financify
  class Ledger
    attr_reader :transacoes

    def initialize
      @transacoes = []  # Inicializa o array de transações vazio
    end

    # Método para adicionar transações
    def adicionar_transacao(transacao)
      raise ArgumentError, "Deve ser uma instância de Transaction" unless transacao.is_a?(Transaction)
      
      @transacoes << transacao
    end

    # Método para calcular o saldo total, levando em conta a moeda
    def saldo_total(moeda = "BRL")
      # Usa o método converter_para da classe Transaction para ajustar o valor para a moeda desejada
      @transacoes.sum { |t| t.converter_para(moeda) }.round(2)
    end

    # Método para filtrar transações por categoria
    def transacoes_por_categoria(categoria)
      @transacoes.select { |t| t.categoria.downcase == categoria.downcase }
    end

    # Método para filtrar transações por período
    def transacoes_por_periodo(inicio, fim)
      data_inicio = Date.parse(inicio)
      data_fim = Date.parse(fim)

      @transacoes.select { |t| t.data >= data_inicio && t.data <= data_fim }
    end

    # Método para listar todas as transações
    def listar_transacoes
      # Formatando as transações para uma string como esperado pelos testes
      @transacoes.map do |transacao|
        "#{transacao.data} | #{transacao.tipo.upcase} | #{transacao.categoria} | #{transacao.valor} |"
      end
    end
  end
end
