print "Digite um número entre 1 e 10: "
contador = gets.chomp.to_i

until contador > 10
    puts contador
    contador += 1
end
