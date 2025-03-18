require "spec_helper"
require "contact/gerenciador"

RSpec.describe Contact::Gerenciador do
  let(:gerenciador) { Contact::Gerenciador.new }

  before do
    File.delete("contatos.csv") if File.exist?("contatos.csv")
  end

  it "adiciona um contato" do
    contato = Contact::Contato.new("João Silva", "1234-5678", "joao@example.com")
    gerenciador.adicionar_contato(contato)
    expect(gerenciador.listar_contatos).to include(contato)
  end

  it "salva e carrega contatos de um arquivo CSV" do
    contato = Contact::Contato.new("João Silva", "1234-5678", "joao@example.com")
    gerenciador.adicionar_contato(contato)
    gerenciador.salvar_contatos

    novo_gerenciador = Contact::Gerenciador.new
    expect(novo_gerenciador.listar_contatos.first.nome).to eq("João Silva")
  end
end