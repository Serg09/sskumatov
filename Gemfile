require 'rubygems/gem_runner'
source 'https://rubygems.org'

# ruby "2.5.1"
ruby "2.7.0"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
# gem 'rails', '~> 5.2', '>= 5.2.1'
gem 'rails', '6.0.2.2'
# Use SCSS for stylesheets
gem 'sassc-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# sskumatov
gem 'aruba'
gem 'guard-rubocop'
# gem 'guard-rspec'
# gem 'guard-bundler'
# BUNDLER DEPENDENCIES START
# source 'https://rubygems.org'
gem 'nokogiri'
gem 'rack', '~> 2.0.1'
gem 'rspec'
# BUNDLER DEPENDENCIES END

# gem 'bundler'


# gem 'rspec-rails'
gem 'factory_bot_rails', :require => false
gem 'capybara'
gem 'faker'
gem 'shoulda-matchers'
gem 'launchy'
gem 'bootstrap-generators'
gem 'bootstrap-sass'
gem 'jquery-turbolinks'
gem 'devise'
gem 'bootstrap-autohidingnavbar-rails'
gem 'delayed_job_active_record'
gem 'devise_zxcvbn'
gem 'mail'
gem 'figaro'
gem 'sprockets', '~> 3.7.2'

gem 'dotenv-rails'
gem 'puma'

# gem to open github from command line
gem 'git-browse-remote'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
#
# Make sure you add something like that to your `Gemfile`. Otherwise you will
# get cucumber > 2 and this will fail on ruby 1.8.7
# gem 'cucumber'
# gem 'cucumber', '~> 1.3.20'
gem 'cucumber'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  # gem 'web-console', '~> 2.0'
  gem 'web-console'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

