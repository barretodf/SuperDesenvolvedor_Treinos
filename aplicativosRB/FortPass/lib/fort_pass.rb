# lib/fort_pass.rb

require "securerandom"

module FortPass
  def self.generate
    SecureRandom.alphanumeric(12)
  end
end
