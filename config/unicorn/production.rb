# ------------------------------------------------------------------------------
# Sample rails 3 config
# ------------------------------------------------------------------------------

# Set your full path to application.
app_path = "/var/www/wakayama_toilet/current"
shared_path = "/var/www/wakayama_toilet/shared"
# Set unicorn options
worker_processes 10
preload_app true
timeout 60
listen "#{shared_path}/sock/unicorn.sock"

# Spawn unicorn master worker for user apps (group: apps)
user 'ryosuke', 'ryosuke'

# Fill path to your app
working_directory app_path

preload_app true

# Should be 'production' by default, otherwise use other env 
rails_env = ENV['RAILS_ENV'] || 'production'

# Log everything to one file
stderr_path "#{shared_path}/log/unicorn.log"
stdout_path "#{shared_path}/log/unicorn.log"

# Set master PID location
pid "#{shared_path}/tmp/pids/unicorn.pid"

before_exec do |server|
  ENV['BUNDLE_GEMFILE'] = "#{app_path}/Gemfile";
end

before_fork do |server, worker|
  old_pid = "#{server.config[:pid]}.oldbin"
  if File.exists?(old_pid) && server.pid != old_pid
    begin
      Process.kill("WINCH", File.read(old_pid).to_i)
      Thread.new {
        sleep 30
        Process.kill("KILL", File.read(old_pid).to_i)
      }
    rescue Errno::ENOENT, Errno::ESRCH
      # someone else did our job for us
    end
  end
end

after_fork do |server, worker|
  ActiveRecord::Base.establish_connection
end
