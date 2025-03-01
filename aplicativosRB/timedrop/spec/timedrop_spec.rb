require "timedrop/timer"

RSpec.describe TimeDrop::Timer do
  describe "#initialize" do
    it "define corretamente o tempo inicial em segundos" do
      timer = TimeDrop::Timer.new(3600) # 1 hora
      expect(timer.instance_variable_get(:@seconds)).to eq(3600)
    end
  end

  describe "#format_time" do
    it "formata corretamente para HH:MM:SS" do
      timer = TimeDrop::Timer.new(3665) # 1 hora, 1 minuto e 5 segundos
      expect(timer.send(:format_time, 3665)).to eq("01:01:05")
    end
  end

  describe "#start" do
    it "exibe '⏰ Tempo esgotado!' quando o tempo acaba" do
      timer = TimeDrop::Timer.new(1)
      expect { timer.start }.to output(/⏰ Tempo esgotado!/).to_stdout
    end
  end
end
