RSpec.describe CsvAnalytica do
  describe ".generate_report" do
    it "gera um relatório formatado corretamente" do
      csv_content = "nome,idade\nPedro,15\nAlice,25"
      file_path = "spec/temp_test.csv"
      
      File.write(file_path, csv_content)
      
      data = CsvAnalytica.read_csv(file_path)

      # Estatísticas numéricas e de texto
      stats = {
        numeric: {
          "idade" => { mean: 20.0, median: 20.0, mode: [15, 25], standard_deviation: 5.0 }
        },
        text: {
          "nome" => { unique_values: ["Pedro", "Alice"], frequencies: {"Pedro" => 1, "Alice" => 1} }
        }
      }

      report = CsvAnalytica.generate_report(data, stats)
      
      expect(report).to include("Relatório de Análise CSV")
      expect(report).to include("Estatísticas da coluna 'idade'")
      expect(report).to include("Média: 20.0")
      expect(report).to include("Frequências: {\"Pedro\"=>1, \"Alice\"=>1}")
    end
  end

  describe ".export_report_to_txt" do
    it "exporta o relatório para um arquivo de texto" do
      csv_content = "nome,idade\nPedro,15\nAlice,25"
      file_path = "spec/temp_test.csv"
      
      File.write(file_path, csv_content)
      
      data = CsvAnalytica.read_csv(file_path)

      stats = {
        numeric: {
          "idade" => { mean: 20.0, median: 20.0, mode: [15, 25], standard_deviation: 5.0 }
        },
        text: {
          "nome" => { unique_values: ["Pedro", "Alice"], frequencies: {"Pedro" => 1, "Alice" => 1} }
        }
      }

      report = CsvAnalytica.generate_report(data, stats)
      
      report_file_path = "spec/report.txt"
      CsvAnalytica.export_report_to_txt(report_file_path, report)

      expect(File).to exist(report_file_path)
      expect(File.read(report_file_path)).to include("Relatório de Análise CSV")
    end
  end

  describe ".export_report_to_csv" do
    it "exporta os dados para um arquivo CSV" do
      csv_content = "nome,idade\nPedro,15\nAlice,25"
      file_path = "spec/temp_test.csv"
      
      File.write(file_path, csv_content)
      
      data = CsvAnalytica.read_csv(file_path)

      report_file_path = "spec/report.csv"
      CsvAnalytica.export_report_to_csv(report_file_path, data)

      expect(File).to exist(report_file_path)
      expect(CSV.read(report_file_path)).to eq([["nome", "idade"], ["Pedro", "15"], ["Alice", "25"]])
    end
  end
end
