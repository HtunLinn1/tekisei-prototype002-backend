# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => "noreply@cybermissions.co.jp",
  :port => 587,
  :user_name => ENV["SEND_MAIL_USER"],
  :password => ENV["SEND_MAIL_PASS"],
  :authentication => :plain,
  :enable_starttls_auto => true,
  :openssl_verify_mode => 'none' 
}