require "spec_helper"
require_relative "../lib/grademaster/arquivo"
require_relative "../lib/grademaster/student"

RSpec.describe Grademaster::Arquivo do
  let(:arquivo_teste) { "alunos_test.txt" }

  before do
    # Substituir o arquivo padrão por um de teste
    stub_const("Grademaster::Arquivo::ARQUIVO_ALUNOS", arquivo_teste)

    # Limpa o arquivo de teste antes de cada execução
    File.write(arquivo_teste, "")
  end

  after do
    # Remove o arquivo de teste após cada execução
    File.delete(arquivo_teste) if File.exist?(arquivo_teste)
  end

  it "salva um aluno no arquivo" do
    aluno = Grademaster::Student.new("Edmilson")
    aluno.adicionar_nota(8.5)
    aluno.adicionar_nota(7.2)

    described_class.salvar_aluno(aluno)

    conteudo = File.read(arquivo_teste)
    expect(conteudo).to include("Edmilson,8.5;7.2")
  end

  it "carrega alunos do arquivo" do
    File.write(arquivo_teste, "Ana,9.0;8.0\nCarlos,7.5;6.5\n")

    alunos = described_class.carregar_alunos

    expect(alunos.size).to eq(2)
    expect(alunos.first.nome).to eq("Ana")
    expect(alunos.first.notas).to eq([9.0, 8.0])
    expect(alunos.last.nome).to eq("Carlos")
    expect(alunos.last.notas).to eq([7.5, 6.5])
  end
end
