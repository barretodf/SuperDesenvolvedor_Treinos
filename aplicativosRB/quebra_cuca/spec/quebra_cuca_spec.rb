require 'quebra_cuca'

RSpec.describe QuebraCuca do
  it 'soma dois números corretamente' do
    expect(QuebraCuca.soma(2, 3)).to eq(5)
  end

  it 'subtrai dois números corretamente' do
    expect(QuebraCuca.subtrai(10, 4)).to eq(6)
  end

  it 'multiplica dois números corretamente' do
    expect(QuebraCuca.multiplica(3, 7)).to eq(21)
  end

  it 'divide dois números corretamente' do
    expect(QuebraCuca.divide(8, 2)).to eq(4)
  end
end
