print "Digite a nota do aluno: "
nota = gets.chomp.to_i

case nota

when 90..100
    puts "A nota #{nota} é da classificação: 'A'."
when 80..89
    puts "A nota #{nota} é da classificação: 'B'."
when 70..79
    puts "A nota #{nota} é da classificação: 'C'."
when 60..69
    puts "A nota #{nota} é da classificação: 'D'."
else
    nota <= 60
    puts "A nota #{nota} é da classificação 'F'."
end