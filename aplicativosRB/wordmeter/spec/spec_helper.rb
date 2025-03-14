# spec/spec_helper.rb
$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "wordmeter"

RSpec.configure do |config|
  config.example_status_persistence_file_path = ".rspec_status"
  config.disable_monkey_patching!
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end