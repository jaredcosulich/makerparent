namespace :my do
  def info(message)
    puts "\e[#{36}m#{message}\e[0m"
  end

  def running(command)
    info "Running: #{command}"
  end

  def run_cmd(command)
    running command
    system command
  end

  def run_task(task)
    running "rake #{task}"
    Rake::Task[task].invoke
  end

  desc 'migrate and annotate'
  task :migrate do
    run_task 'db:migrate'
    run_task 'db:test:prepare'
    run_cmd 'annotate'
  end
end
