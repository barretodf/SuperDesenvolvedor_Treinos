# lib/wordmeter.rb
class WordMeter
  VERSION = "0.1.0"

  def self.count_words(text)
    return 0 if text.nil? || text.strip.empty?

    # Remove pontuações no final das palavras e divide em palavras
    words = text.gsub(/[.,!?;:]/, '').split
    words.size
  end
end