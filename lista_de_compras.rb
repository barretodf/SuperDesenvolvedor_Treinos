lista_de_compras = []

loop do 
    puts "Digite um produto para a lista ou (sair):"
        item = gets.chomp

        break if item == "sair" 
        lista_de_compras << item
    end

    puts "\nLista de compras:"
    if lista_de_compras.empty?
        puts "A lista está vazia"
    else
        lista_de_compras.each_with_index do |item, index|
        puts "#{index + 1}. #{item}"
    end
end