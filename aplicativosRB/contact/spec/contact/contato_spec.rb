require "spec_helper"
require "contact/contato"

RSpec.describe Contact::Contato do
  let(:contato) { Contact::Contato.new("João Silva", "1234-5678", "joao@example.com") }

  it "inicializa com nome, telefone e email" do
    expect(contato.nome).to eq("João Silva")
    expect(contato.telefone).to eq("1234-5678")
    expect(contato.email).to eq("joao@example.com")
  end

  it "converte para array" do
    expect(contato.to_array).to eq(["João Silva", "1234-5678", "joao@example.com"])
  end
end