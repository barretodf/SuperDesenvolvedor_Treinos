module Grademaster
  class Student
    attr_accessor :nome, :notas

    def initialize(nome)
      @nome = nome
      @notas = []
    end

    def adicionar_nota(nota)
      @notas << nota
    end

    # Aliases para compatibilidade com os testes
    alias_method :name, :nome
    alias_method :grades, :notas
    alias_method :add_grade, :adicionar_nota
  end
end
