set :stage, :production
set :branch, :master
set :deploy_to, '/u01/apps/qwinix/st-bb3'

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
role :app, %w{deploy@st.bb3.qwinix.io}
role :web, %w{deploy@st.bb3.qwinix.io}
role :db, %w{deploy@st.bb3.qwinix.io}
server 'st.bb3.qwinix.io', roles: %w{:web, :app, :db}, user: 'deploy'

set :ssh_options, {
   #verbose: :debug,
   keys: %w(~/.ssh/id_rsa),
   auth_methods: %w(publickey)
}