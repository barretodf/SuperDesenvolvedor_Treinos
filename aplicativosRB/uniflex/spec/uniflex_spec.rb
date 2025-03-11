require_relative '../lib/uniflex'

RSpec.describe Uniflex do
  it "has a version number" do
    expect(Uniflex::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end
end
