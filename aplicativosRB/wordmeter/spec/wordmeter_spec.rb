# spec/wordmeter_spec.rb

require "wordmeter"

RSpec.describe WordMeter do
  describe ".count_words" do
    it "conta corretamente o número de palavras em uma frase" do
      expect(WordMeter.count_words("Olá, mundo! Este é um teste.")).to eq(6)
    end

    it "retorna 0 para uma string vazia" do
      expect(WordMeter.count_words("")).to eq(0)
    end

    it "retorna 0 para uma string com apenas espaços" do
      expect(WordMeter.count_words("   ")).to eq(0)
    end

    it "conta corretamente palavras separadas por múltiplos espaços" do
      expect(WordMeter.count_words("  Ruby   é   incrível!  ")).to eq(3)
    end

    it "retorna 0 se o texto for nil" do
      expect(WordMeter.count_words(nil)).to eq(0)
    end
  end
end
