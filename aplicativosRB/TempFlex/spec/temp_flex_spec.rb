require "temp_flex"

RSpec.describe TempFlex do
  it "converte Celsius para Fahrenheit corretamente" do
    expect(TempFlex.celsius_to_fahrenheit(0)).to eq(32)
    expect(TempFlex.celsius_to_fahrenheit(100)).to eq(212)
  end

  it "Converte Fahrenheit para celsius corretamente" do
    expect(TempFlex.fahrenheit_to_celsius(32)).to eq(0)
    expect(TempFlex.fahrenheit_to_celsius(212)).to eq(100)
  end
end
