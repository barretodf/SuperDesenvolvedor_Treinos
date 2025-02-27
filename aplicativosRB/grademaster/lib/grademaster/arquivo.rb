module Grademaster
  class Arquivo
    ARQUIVO_ALUNOS = "alunos.txt"  # Nome do arquivo onde os dados serão armazenados

    # Método para salvar um aluno no arquivo
    def self.salvar_aluno(aluno)
      File.open(ARQUIVO_ALUNOS, "a") do |arquivo|
        arquivo.puts("#{aluno.nome},#{aluno.notas.join(";")}")
      end
    end

    # Método para carregar alunos do arquivo
    def self.carregar_alunos
      return [] unless File.exist?(ARQUIVO_ALUNOS)  # Retorna um array vazio se o arquivo não existir

      alunos = []
      File.foreach(ARQUIVO_ALUNOS) do |linha|
        nome, notas = linha.strip.split(",")

        # Usa Grademaster::Student corretamente
        aluno = ::Grademaster::Student.new(nome)

        # Para cada nota (se houver), adiciona utilizando o método em português
        if notas && !notas.empty?
          notas.split(";").map(&:to_f).each do |nota|
            aluno.adicionar_nota(nota)
          end
        end

        alunos << aluno
      end
      alunos
    end
  end
end
