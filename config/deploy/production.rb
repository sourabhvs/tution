set :stage, :production
set :branch, :master
set :deploy_to, '/u01/apps/tution'

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
role :app, %w{deploy@35.163.219.77}
role :web, %w{deploy@35.163.219.77}
role :db, %w{deploy@35.163.219.77}
server '35.163.219.77', roles: %w{:web, :app, :db}, user: 'deploy'

set :ssh_options, {
   #verbose: :debug,
   keys: %w(~/.ssh/id_rsa),
   auth_methods: %w(publickey)
}