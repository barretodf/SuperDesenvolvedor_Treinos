# Função que recebe um número como parâmetro e calcula o fatorial
def calcular_fatorial(numero)
    # Criar uma variável para armazenar o resultado do fatorial (iniciar com 1)
    resultado = 1
  
    # Usar um laço de repetição para multiplicar os números de 1 até o valor recebido
    if numero < 0
      return "Fatorial não está definido para números negativos."
    elsif numero == 0
      return 1
    else
      for i in 1..numero
        resultado *= i
      end
    end
  
    # Retornar o resultado
    return resultado
  end
  
  # Exibir o resultado para o usuário
  puts "Digite um número para calcular o fatorial:"
  numero = gets.chomp.to_i
  
  resultado = calcular_fatorial(numero)
  
  puts "O fatorial de #{numero} é = #{resultado}."