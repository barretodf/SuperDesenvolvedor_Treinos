require 'csv'
require 'descriptive_statistics'

module CsvAnalytica
  # Função para gerar um relatório
  def self.generate_report(data, stats)
    report = []

    report << "Relatório de Análise CSV"
    report << "----------------------------------"

    # Adiciona as estatísticas das colunas numéricas
    stats[:numeric].each do |column, stat|
      report << "Estatísticas da coluna '#{column}':"
      report << "  Média: #{stat[:mean]}"
      report << "  Mediana: #{stat[:median]}"
      report << "  Moda: #{stat[:mode].inspect}"
      report << "  Desvio Padrão: #{stat[:standard_deviation]}"
      report << ""
    end

    # Adiciona as estatísticas das colunas de texto
    stats[:text].each do |column, stat|
      report << "Estatísticas da coluna '#{column}':"
      report << "  Valores únicos: #{stat[:unique_values].inspect}"
      report << "  Frequências: #{stat[:frequencies].inspect}"
      report << ""
    end

    report.join("\n")
  end

  # Função para exportar o relatório para um arquivo CSV
  def self.export_report_to_csv(file_path, data)
    CSV.open(file_path, "w") do |csv|
      csv << data.first.keys  # Cabeçalho
      data.each { |row| csv << row.values }  # Dados
    end
  end

  # Função para exportar o relatório para um arquivo de texto
  def self.export_report_to_txt(file_path, report)
    File.write(file_path, report)
  end
end

module CsvAnalytica
  def self.read_csv(file_path, delimiter = nil)
    # Se o delimitador não for especificado, tenta detectar automaticamente
    delimiter ||= detect_delimiter(file_path)
    
    csv_data = []

    # Lê o arquivo CSV com o delimitador especificado
    CSV.foreach(file_path, headers: true, col_sep: delimiter) do |row|
      csv_data << row.to_hash
    end

    csv_data
  end

  def self.detect_delimiter(file_path)
    first_line = File.readlines(file_path).first
    if first_line.include?(',')
      return ','
    elsif first_line.include?(';')
      return ';'
    elsif first_line.include?('|')
      return '|'
    else
      return ','
    end
  end

  # Estatísticas para colunas numéricas
  def self.calculate_numeric_statistics(data, column)
    # Filtra valores numéricos da coluna especificada
    numeric_values = data.map { |row| row[column].to_f }.reject { |v| v.nan? }
    
    {
      mean: numeric_values.mean,
      median: numeric_values.median,
      mode: numeric_values.mode,
      standard_deviation: numeric_values.standard_deviation
    }
  end

  # Estatísticas para colunas de texto
  def self.calculate_text_statistics(data, column)
    # Conta valores únicos e suas frequências na coluna especificada
    values = data.map { |row| row[column] }
    unique_values = values.uniq
    frequencies = unique_values.map { |value| [value, values.count(value)] }.to_h

    { unique_values: unique_values, frequencies: frequencies }
  end
end
