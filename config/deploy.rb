# config valid only for Capistrano 3.1
lock '3.2.1'

set :application, 'wakayama_toilet'
set :repo_url, "git@github.com/Ryosuke0307/wakayama_toilet.git"

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call
set :branch, ENV['BRANCH'] || 'master'

# Default deploy_to directory is /var/www/my_app
set :deploy_to, '/var/www/wakayama_toilet'

# Default value for :scm is :git
set :scm, :git
set :keep_releases, 5

set :rbenv_type, :system
set :rbenv_ruby, '2.1.3'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all

set :linked_dirs, %w{bin log tmp/backup tmp/pids tmp/cache tmp/sockets vendor/bundle}
set :unicorn_pid, "#{shared_path}/tmp/pids/unicorn.pid"

set :branch, ENV['BRANCH'] || 'master'

set :unicorn_bundle, '/usr/local/bin/bundle'
set :unicorn_bin, '/usr/local/bin/unicorn'
set :unicorn_user, 'wakayama_toilet'


namespace :deploy do

  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      invoke 'unicorn:restart'
    end
  end

  task :finalize_update do
    on roles(:app), in: :sequence do
      execute <<-CMD
        cp #{release_path}/config/environments/#{fetch :rails_env}/database.yml #{release_path}/config/database.yml &&\
      CMD
    end
  end

  after 'symlink:linked_dirs', :finalize_update
  after :publishing, :restart
  after :restart, :restart_queue

end
