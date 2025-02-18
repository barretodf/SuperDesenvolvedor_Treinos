# spec/nomeshow_spec.rb
require "spec_helper"

RSpec.describe NomeShow do
  # Teste para o método template-driven
  describe ".gerar_titulo" do
    it "gera um título aleatório com adjetivo, substantivo e frase" do
      titulo = NomeShow.gerar_titulo
      expect(titulo).to be_a(String)
      # Verifica se o título contém itens de cada lista (case-insensitive)
      expect(titulo).to match(/(#{NomeShow::ADJETIVOS.join('|')})/i)
      expect(titulo).to match(/(#{NomeShow::SUBSTANTIVOS.join('|')})/i)
      expect(titulo).to match(/(#{NomeShow::FRASES.join('|')})/i)
    end
  end

  # Teste para o método que gera todas as combinações (produto cartesiano)
  describe ".titulos_cartesianos" do
    it "gera todas as combinações possíveis entre os elementos das listas" do
      combinacoes = NomeShow.titulos_cartesianos
      expect(combinacoes).to be_an(Array)
      # O número esperado de combinações é o produto dos tamanhos das listas
      expected_count = NomeShow::ADJETIVOS.size * NomeShow::SUBSTANTIVOS.size * NomeShow::FRASES.size
      expect(combinacoes.size).to eq(expected_count)
    end
  end

  # Teste para o método que escolhe uma combinação aleatória do produto cartesiano
  describe ".gerar_titulo_cartesiano" do
    it "gera um título aleatório dentre todas as combinações possíveis" do
      titulo = NomeShow.gerar_titulo_cartesiano
      expect(titulo).to be_a(String)
      # Verifica se o título gerado está presente entre as combinações possíveis
      expect(NomeShow.titulos_cartesianos).to include(titulo)
    end
  end
end
