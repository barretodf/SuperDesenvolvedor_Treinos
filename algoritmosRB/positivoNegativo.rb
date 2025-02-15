# Verificar se o número é positivo ou negativo
print "Digite um número: "
numero = gets.chomp.to_i

if numero > 0
    puts "O número #{numero} é positivo!"
elsif numero < 0
    puts "O número #{numero} é negativo!"
else 
    puts "Você digitou o número ZERO!"
end
