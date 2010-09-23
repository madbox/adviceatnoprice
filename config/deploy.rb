set :application, "adviceatnoprice"
set :repository,  "git@github.com:madbox/adviceatnoprice.git"

dpath = "/home/hosting_madbox/projects/#{application}"

set :user, "hosting_madbox"
set :use_sudo, false
set :deploy_to, dpath

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "hydrogen.locum.ru"                          # Your HTTP server, Apache/etc
role :app, "hydrogen.locum.ru"                          # This may be the same as your `Web` server
role :db,  "hydrogen.locum.ru", :primary => true # This is where Rails migrations will run
# role :db,  "your slave db-server here"

after "deploy:update_code", :copy_database_config

task :copy_database_config, roles => :app do
  db_config = "#{shared_path}/database.yml"
  run "cp #{db_config} #{release_path}/config/database.yml"
end

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
