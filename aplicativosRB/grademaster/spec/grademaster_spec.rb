require "spec_helper"
require_relative "../lib/grademaster/student"

RSpec.describe Grademaster::Student do
  it "cria um aluno com nome e sem notas" do
    aluno = Grademaster::Student.new("Eddie")
    expect(aluno.name).to eq("Eddie")
    expect(aluno.grades).to be_empty
  end

  it "adiciona uma nota ao aluno" do
    aluno = Grademaster::Student.new("Eddie")
    aluno.add_grade(9.5)
    expect(aluno.grades).to include(9.5)
  end
end
