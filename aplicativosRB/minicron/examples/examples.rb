require "minicron"

cron = MiniCron.new(5) { puts "Executando tarefas..." }
cron.start

sleep 20 #mantém o script rodando por um tempo

