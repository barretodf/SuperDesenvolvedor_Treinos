module TimeDrop
  class Timer
    def initialize(seconds)
      @seconds = seconds
    end

    def start
      while @seconds > 0
        print "\rTempo restante: #{format_time(@seconds)}  "
        $stdout.flush
        sleep(1)
        @seconds -= 1
      end
      puts "\n⏰ Tempo esgotado!"
    end

    private

    def format_time(total_seconds)
      hours = total_seconds / 3600
      minutes = (total_seconds % 3600) / 60
      seconds = total_seconds % 60
      format("%02d:%02d:%02d", hours, minutes, seconds)
    end
  end
end
