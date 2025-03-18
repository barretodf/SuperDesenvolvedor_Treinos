require "thor"
require_relative "gerenciador"

module Contact
  class CLI < Thor
    def initialize(*args)
      super
      @gerenciador = Gerenciador.new
    end

    desc "add NOME TELEFONE EMAIL", "Adiciona um novo contato"
    def add(nome, telefone, email)
      contato = Contato.new(nome, telefone, email)
      @gerenciador.adicionar_contato(contato)
      puts "Contato adicionado com sucesso!"
    end

    desc "list", "Lista todos os contatos"
    def list
      contatos = @gerenciador.listar_contatos
      if contatos.empty?
        puts "Nenhum contato cadastrado."
      else
        contatos.each_with_index do |contato, index|
          puts "#{index + 1}. Nome: #{contato.nome}, Telefone: #{contato.telefone}, Email: #{contato.email}"
        end
      end
    end

    desc "search NOME", "Busca contatos por nome"
    def search(nome)
      contatos = @gerenciador.buscar_contatos(nome)
      if contatos.empty?
        puts "Nenhum contato encontrado."
      else
        contatos.each_with_index do |contato, index|
          puts "#{index + 1}. Nome: #{contato.nome}, Telefone: #{contato.telefone}, Email: #{contato.email}"
        end
      end
    end

    desc "edit INDEX NOME TELEFONE EMAIL", "Edita um contato existente"
    def edit(index, nome, telefone, email)
      novo_contato = Contato.new(nome, telefone, email)
      @gerenciador.editar_contato(index.to_i - 1, novo_contato)
      puts "Contato editado com sucesso!"
    end

    desc "delete INDEX", "Exclui um contato"
    def delete(index)
      @gerenciador.excluir_contato(index.to_i - 1)
      puts "Contato excluído com sucesso!"
    end

    desc "export", "Exporta contatos para CSV"
    def export
      @gerenciador.salvar_contatos
      puts "Contatos exportados para contatos.csv!"
    end
  end
end