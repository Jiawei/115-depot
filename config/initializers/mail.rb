ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => '587',
  :authentication => :plain,
  :user_name => ENV['18299882@qq.com']
  :password => ENV['000000'],
  :domain => 'heroku.com'
}

ActionMailer::Base.delivery_method = :smtp
