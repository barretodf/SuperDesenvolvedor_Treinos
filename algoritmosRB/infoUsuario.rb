usuario = {}

puts "Digite seu nome: "
usuario[:nome] = gets.chomp

puts "Digite sua idade: "
usuario[:idade] = gets.chomp

puts "Digite sua profissão:"
usuario[:profissao] = gets.chomp

puts "\nDados do usuário:"
puts "Nome: #{usuario[:nome]}"
puts "Idade: #{usuario[:idade]}"
puts "Profissão: #{usuario[:profissao]}"