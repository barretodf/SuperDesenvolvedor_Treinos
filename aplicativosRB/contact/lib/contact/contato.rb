module Contact
    class Contato
      attr_accessor :nome, :telefone, :email
  
      def initialize(nome = "", telefone = "", email = "")
        @nome = nome
        @telefone = telefone
        @email = email
      end
  
      # Converte o contato para um array (útil para salvar em CSV)
      def to_array
        [nome, telefone, email]
      end
  
      # Cria um contato a partir de um array (útil para carregar de CSV)
      def self.from_array(array)
        Contato.new(array[0], array[1], array[2])
      end
    end
  end