class MiniCron
  def initialize(interval, &task)
    @interval = interval
    @task = task
  end

  def start
    Thread.new do
      loop do
        @task.call
        sleep @interval
      end
    end
  end
end
