require "fort_pass"

RSpec.describe FortPass do
  it "gera uma senha de 12 caracteres" do
    senha = FortPass.generate
    expect(senha.length).to eq(12)
  end

  it "gera senhas diferentes a cada execução" do
    senha1 = FortPass.generate
    senha2 = FortPass.generate
    expect(senha1).not_to eq(senha2)
  end
end
