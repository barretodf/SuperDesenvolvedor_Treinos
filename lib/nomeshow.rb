# lib/nomeshow.rb

module NomeShow
  # Listas de palavras para a geração de títulos
  ADJETIVOS = ["incrível", "surpreendente", "fantástico", "épico", "impressionante"]
  SUBSTANTIVOS = ["viagem", "aventura", "truque", "desafio", "dicas"]
  FRASES = ["não vai acreditar", "o segredo revelado", "como fazer", "truques secretos"]

  # Método Template-Driven: Gera um título aleatório combinando um item de cada lista
  def self.gerar_titulo
    adjetivo = ADJETIVOS.sample         # Escolhe um adjetivo aleatório
    substantivo = SUBSTANTIVOS.sample     # Escolhe um substantivo aleatório
    frase = FRASES.sample                 # Escolhe uma frase aleatória

    # Retorna o título formatado
    "#{adjetivo.capitalize} #{substantivo} - #{frase}"
  end

  # Algoritmo de Combinação (Produto Cartesiano):
  # Gera todas as combinações possíveis entre os elementos das listas.
  def self.titulos_cartesianos
    # Cria o produto cartesiano dos arrays e formata cada combinação como um título
    ADJETIVOS.product(SUBSTANTIVOS, FRASES).map do |comb|
      "#{comb[0].capitalize} #{comb[1]} - #{comb[2]}"
    end
  end

  # Seleciona aleatoriamente um título dentre todas as combinações possíveis.
  def self.gerar_titulo_cartesiano
    titulos = titulos_cartesianos   # Gera todas as combinações
    titulos.sample                  # Escolhe uma aleatoriamente
  end

  

end
