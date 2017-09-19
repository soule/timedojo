set :stage, :production

# Replace 127.0.0.1 with your server's IP address!
server '45.55.221.118', user: 'deploy', roles: %w{app db web}


