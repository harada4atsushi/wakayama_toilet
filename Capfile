# Load DSL and Setup Up Stages
require 'capistrano/setup'

# Includes default deployment tasks
require 'capistrano/deploy'
require 'capistrano/rails'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'
require 'capistrano/rbenv'
require 'capistrano/bundler'
require 'capistrano3/unicorn'
require 'hipchat/capistrano'

Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
