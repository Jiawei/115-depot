ActionMailer::Base.smtp_settings = {
  :address => 'smtp.gmail.com',
  :port => '587',
  :authentication => :plain,
  :user_name => 'web115depot@gmail.com',
  :password => 'web115depot',
  :domain => 'heroku.com'
}

ActionMailer::Base.delivery_method = :smtp
