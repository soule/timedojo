set :application, 'worktracker'
set :repo_url, 'git@github.com:soule/timedojo.git'

set :deploy_to, '/home/deploy/timedojo'

append :linked_files, "config/database.yml", "config/secrets.yml", "config/application.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"
