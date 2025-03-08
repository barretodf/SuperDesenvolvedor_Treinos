require "spec_helper"
require "financify/transaction"
require "date"

RSpec.describe Financify::Transaction do
  it "cria uma transação válida de receita" do
    transaction = Financify::Transaction.new(100, :receita, "Salário", "2025-03-07", "Pagamento mensal")
    
    expect(transaction.valor).to eq(100)
    expect(transaction.tipo).to eq(:receita)
    expect(transaction.categoria).to eq("Salário")
    expect(transaction.data).to eq(Date.new(2025, 3, 7))
    expect(transaction.descricao).to eq("Pagamento mensal")
  end

  it "cria uma transação válida de despesa" do
    transaction = Financify::Transaction.new(50, :despesa, "Alimentação", "2025-03-07")
    
    expect(transaction.valor).to eq(-50) # Despesas devem ser negativas
    expect(transaction.tipo).to eq(:despesa)
    expect(transaction.categoria).to eq("Alimentação")
  end

  it "lança erro ao criar transação com tipo inválido" do
    expect { Financify::Transaction.new(50, :investimento, "Ações", "2025-03-07") }.to raise_error(ArgumentError, "Tipo inválido!")
  end

  it "lança erro ao criar transação com valor negativo" do
    expect { Financify::Transaction.new(-10, :receita, "Freelance", "2025-03-07") }.to raise_error(ArgumentError, "Valor deve ser positivo!")
  end
end
