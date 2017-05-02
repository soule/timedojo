set :stage, :production

# Replace 127.0.0.1 with your server's IP address!
server '64.137.248.220', user: 'soule', roles: %w{web app}

config.action_mailer.delivery_method = :mailgun
config.action_mailer.mailgun_settings = {
        api_key: 'key-2a1d80c84b04bbc0bb2956d6805f1169',
        domain: 'mail.timedojo.com'
}