require "minicron"

RSpec.describe MiniCron do
  it "executa a tarefa no intervalo correto" do
    counter = 0
    cron = MiniCron.new(2) { counter += 1 }
    cron.start
    sleep 6
    expect(counter).to be >= 3
  end
end
