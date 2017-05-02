set :application, 'worktracker'
set :repo_url, 'https://github.com/soule/worktracker.git'

set :deploy_to, '/home/soule/worktracker'
set :scm_username, ENV['scm_username']
set :scm_password, ENV['scm_password']

append :linked_files, "config/database.yml", "config/secrets.yml"
set :linked_files %w{config/application.yml}
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"
