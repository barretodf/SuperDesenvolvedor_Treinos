require "spec_helper"
require "financify/ledger"
require "financify/transaction"

RSpec.describe Financify::Ledger do
  let(:ledger) { Financify::Ledger.new }

  it "inicia sem transações" do
    novo_ledger = Financify::Ledger.new # 🔥 Ledger limpo para esse teste
    expect(novo_ledger.transacoes).to be_empty
  end

  it "adiciona uma transação corretamente" do
    transacao = Financify::Transaction.new(200, :receita, "Salário", "2025-03-07")
    ledger.adicionar_transacao(transacao)

    expect(ledger.transacoes).to include(transacao)
  end

  it "calcula o saldo corretamente" do
    ledger = Financify::Ledger.new # 🔥 Ledger novo para evitar interferências

    ledger.adicionar_transacao(Financify::Transaction.new(500, :receita, "Salário", "2025-03-07"))
    ledger.adicionar_transacao(Financify::Transaction.new(100, :despesa, "Alimentação", "2025-03-07"))

    expect(ledger.saldo_total).to eq(400) # 500 - 100
  end

  it "não permite adicionar objetos que não sejam Transaction" do
    expect { ledger.adicionar_transacao("isso não é uma transação") }.to raise_error(ArgumentError, "Deve ser uma instância de Transaction")
  end

  before do
    ledger.adicionar_transacao(Financify::Transaction.new(100, :receita, "Freelance", "2025-03-01"))
    ledger.adicionar_transacao(Financify::Transaction.new(200, :receita, "Salário", "2025-03-05"))
    ledger.adicionar_transacao(Financify::Transaction.new(50, :despesa, "Alimentação", "2025-03-07"))
  end

  it "lista todas as transações corretamente" do
    expect(ledger.listar_transacoes).to include("2025-03-01 | RECEITA | Freelance | 100 |")
    expect(ledger.listar_transacoes).to include("2025-03-05 | RECEITA | Salário | 200 |")
    expect(ledger.listar_transacoes).to include("2025-03-07 | DESPESA | Alimentação | -50 |")
  end

  it "filtra transações por categoria corretamente" do
    resultado = ledger.transacoes_por_categoria("Salário")
    expect(resultado.size).to eq(1)
    expect(resultado.first.categoria).to eq("Salário")
  end

  it "filtra transações por período corretamente" do
    resultado = ledger.transacoes_por_periodo("2025-03-01", "2025-03-06")
    expect(resultado.size).to eq(2) # Só as duas primeiras entram nesse período
  end
end
