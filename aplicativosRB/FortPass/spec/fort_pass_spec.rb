require "fort_pass"

RSpec.describe FortPass do
  it "gera uma senha de 12 caracteres" do
    senha = FortPass.generate
    expect(senha.length).to eq(12)
  end

  it "gera uma senha contendo apenas caracteres alfanuméricos" do
    senha = FortPass.generate
    expect(senha).to match(/^[a-zA-Z0-9]{12}$/)
  end
end
