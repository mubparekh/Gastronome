ruby '2.1.3'
source 'http://rubygems.org'
gem 'rails', '4.1.6'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

# for Heroku deployment - as described in Ap. A of ELLS book
group :development, :test do
  gem 'sqlite3'
  gem 'byebug'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'launchy'
  gem 'rspec-rails'
  gem 'thin'
end

group :test do
  gem 'cucumber-rails',                  :require => false
  gem 'cucumber-rails-training-wheels'
  gem 'simplecov', :require => false, :group => :test
  gem 'reek'
  gem 'flog'
end

group :production do
  gem 'pg'
  # Use unicorn as the web server removes lots of potential heroku issues.
  gem 'unicorn'
  gem 'rails_12factor'
end

# The "assets" group was removed in Rails 4, so these gems
# have been removed from that group
gem 'therubyracer', '~> 0.12.0'
gem 'sass-rails'
gem 'coffee-rails'
gem 'uglifier'

# Use bootstrap for styling
gem 'bootstrap-sass', '~> 3.3.3'

gem 'jquery-rails'
gem 'haml'

# Deploy with Capistrano
# gem 'capistrano'
