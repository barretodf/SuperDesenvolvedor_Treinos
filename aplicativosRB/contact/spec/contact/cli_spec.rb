require "spec_helper"
require "contact/cli"

RSpec.describe Contact::CLI do
  let(:cli) { Contact::CLI.new }

  it "adiciona um contato via CLI" do
    expect { cli.invoke(:add, ["João Silva", "1234-5678", "joao@example.com"]) }.to output("Contato adicionado com sucesso!\n").to_stdout
  end
end