def celsius_para_fahrenheit(celsius)
    fahrenheit = (celsius * 9.0 / 5.0) + 32.0
    return fahrenheit 
end

print "Digite a temperatura em Celsius: "
celsius = gets.chomp.to_f

fahrenheit = celsius_para_fahrenheit(celsius)
puts "#{celsius} graus Celsius equivalem a #{fahrenheit} graus Fahrenheit."
