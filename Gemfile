source 'http://rubygems.org'

gem 'rails', '3.1.0'
gem 'jquery-rails', '1.0.14'
gem 'heroku'
gem 'gravatar_image_tag', '1.0.0'
gem 'will_paginate', '~> 3.0.2'     # '~>' checks last number only for updates
gem 'rack', '1.3.3'

group :development do
  gem 'rspec-rails', '2.6.1'
  gem 'annotate', '2.4.0'
  gem 'pry'
  gem 'sqlite3'
end

group :test do
  gem 'rspec', '2.6.0'
  gem 'webrat', '0.7.3'
  gem 'factory_girl_rails', '1.2.0'
  gem 'sqlite3'
  gem 'spork', '> 0.9.0.rc'
  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'faker', :require => false

  group :darwin do
    gem 'rb-fsevent', :require => false
    gem 'growl', :require => false
  end
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier', '1.0.3'
end

group :production do
  # specifically for Heroku, must run 'bundle install --without production'
  gem 'pg'  
end

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

