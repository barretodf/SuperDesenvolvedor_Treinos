require "csv_analytica"  # Carrega o código da gem
require "spec_helper"    # Carrega as configurações do RSpec

RSpec.describe CsvAnalytica do
  it "tem uma versão definida" do
    expect(CsvAnalytica::VERSION).not_to be nil
  end
end
