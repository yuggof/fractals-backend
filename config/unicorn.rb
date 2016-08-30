worker_processes 2
timeout 15
preload_app true

before_fork do |server, worker|
  Signal.trap('TERM') { Process.kill 'QUIT', Process.pid }

  ActiveRecord::Base.connection.disconnect!
end

after_fork do |server, worker|
  Signal.trap('TERM') {}

  ActiveRecord::Base.establish_connection
end
