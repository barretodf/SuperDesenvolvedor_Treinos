require "nomeshow"

RSpec.describe NomeShow do
  it "gera um nome aleatório sem erro" do 
    nome = NomeShow.gerar_nome("Titulo Criativo para Vídeos.")
    expect(nome).to be_a(String)
  end
end
