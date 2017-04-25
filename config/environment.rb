# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!


ActionMailer::Base.smtp_settings = {
  :user_name => ENV['mail_username'],
  :password => ENV['mail_password'],
  :domain => ENV['mail_domain'],
  :address => ENV['mail_address'],
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}