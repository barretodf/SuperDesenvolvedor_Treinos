require "csv"

module Contact
  class Gerenciador
    attr_reader :contatos

    def initialize
      @contatos = []
      carregar_contatos
    end

    # Adiciona um novo contato
    def adicionar_contato(contato)
      @contatos << contato
      salvar_contatos
    end

    # Lista todos os contatos
    def listar_contatos
      @contatos
    end

    # Busca contatos por nome
    def buscar_contatos(nome)
      @contatos.select { |contato| contato.nome.downcase.include?(nome.downcase) }
    end

    # Edita um contato existente
    def editar_contato(index, novo_contato)
      @contatos[index] = novo_contato
      salvar_contatos
    end

    # Exclui um contato
    def excluir_contato(index)
      @contatos.delete_at(index)
      salvar_contatos
    end

    # Carrega contatos de um arquivo CSV
    def carregar_contatos
      if File.exist?("contatos.csv")
        CSV.foreach("contatos.csv") do |row|
          @contatos << Contato.from_array(row)
        end
      end
    end

    # Salva contatos em um arquivo CSV
    def salvar_contatos
      CSV.open("contatos.csv", "w") do |csv|
        @contatos.each { |contato| csv << contato.to_array }
      end
    end
  end
end