numero_secreto = rand(1..100)

tentativas = 0
acertou = false

until acertou
    puts "Tente adivinhar o número secreto (entre 1 e 100):"
    tentativa = gets.chomp.to_i
    tentativas += 1

    if tentativa < numero_secreto
        puts "Tente um número maior."
    elsif tentativa > numero_secreto
        puts "Tente um número menor."
    else
        puts "Parabéns! Você acertou em #{tentativas} tentativas!"
        acertou = true
    end 
end