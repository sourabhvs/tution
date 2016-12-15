# config valid only for current version of Capistrano
lock '3.6.1'

set :application, 'tution'
set :repo_url, 'git@github.com:prakash89/tution.git'
set :rbenv_ruby, '2.2.2'
set :rbenv_path, '/home/deploy/.rbenv'

set :format, :pretty

set :linked_files, %w{config/database.yml}

set :default_env, { path: "~/.rbenv/shims:~/.rbenv/bin:$PATH" }

set :keep_releases, 5

set :bundle_gemfile, -> { release_path.join('Gemfile') }
set :bundle_dir, -> { shared_path.join('bundle') }
set :bundle_flags, '--deployment --quiet'
set :bundle_without, %w{development test}.join(' ')
set :bundle_binstubs, -> { shared_path.join('bin') }
set :bundle_roles, :all
set :bundle_bins, %w(gem rake rails)
set :whenever_roles, :all
set :whenever_identifier, ->{ "#{fetch(:application)}_#{fetch(:stage)}" }
set :log_level, :debug

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      execute :touch, release_path.join('REVISION')
      execute :touch, release_path.join('tmp/restart.txt')
      puts "RESTARTED SUCCESSFULLY"
    end
  end

  after :publishing, :restart
  after 'deploy', 'sidekiq:restart'


  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
