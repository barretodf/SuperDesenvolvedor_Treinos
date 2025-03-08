# exemplo.rb (na raiz do projeto)

require_relative "lib/financify/ledger"
require_relative "lib/financify/transaction"
require_relative "lib/financify/currency_converter"

# Criando um livro razão (Ledger)
ledger = Financify::Ledger.new

# Adicionando transações com diferentes moedas
ledger.adicionar_transacao(Financify::Transaction.new(100, :receita, "Freelance", "2025-03-01", "USD"))
ledger.adicionar_transacao(Financify::Transaction.new(200, :receita, "Salário", "2025-03-05", "EUR"))
ledger.adicionar_transacao(Financify::Transaction.new(50, :despesa, "Alimentação", "2025-03-07", "BRL"))

# Exibir todas as transações
puts "Lista de Transações:"
ledger.listar_transacoes.each { |t| puts t }

# Exibir saldo total convertido para BRL
puts "\nSaldo total em BRL: #{ledger.saldo_total('BRL')}"
