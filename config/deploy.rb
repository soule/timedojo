set :application, 'worktracker'
set :repo_url, 'git@github.com:soule/worktracker.git'

set :deploy_to, '/home/soule/worktracker'
set :scm_username, "soule"
set :scm_password, "soule25-"

append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"