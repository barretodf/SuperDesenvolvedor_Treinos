# module NomeShow
#   def self.gerar_nome(frase)
#     palavras = frase.split
#     palavras.shuffle.join(" ")
#   end
# end
require 'debug'

module NomeShow
  def self.gerar_nome(frase)
    debuger
    palavras = frase.split
    palavras.shuffle.join(" ")
  end
end