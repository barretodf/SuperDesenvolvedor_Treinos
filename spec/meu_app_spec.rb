require_relative '../lib/StickFlow_Music/melodia'

RSpec.describe Melodia do
  it 'retorna a mensagem correta ao tocar' do
    expect(Melodia.tocar).to eq("Tocando melodia...")
  end
end
