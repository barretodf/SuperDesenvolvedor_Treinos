require "spec_helper"

RSpec.describe Contact do
  it "has a version number" do
    expect(Contact::VERSION).not_to be nil
  end

  it "creates a new contact" do
    contato = Contact::Contato.new
    expect(contato).to be_a(Contact::Contato)
  end
end