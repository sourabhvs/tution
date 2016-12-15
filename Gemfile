source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
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

# Use PG gem for database
gem 'pg', '~> 0.18.4'

# Messages integration gem
gem 'twilio-ruby'

# sidekiq gem
gem 'sidekiq'
gem 'sidekiq-status', '~> 0.5.4'
gem 'sidekiq-unique-jobs'

gem 'geocoder'

# Running jobs and regular intervals
gem 'whenever', '~> 0.9.4', :require => false

gem 'devise', '~> 3.5', '>= 3.5.6'

gem "codeclimate-test-reporter", group: :test, require: nil

gem 'lazy_high_charts', '~> 1.5', '>= 1.5.6'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem 'capistrano', '~> 3.5'
gem 'capistrano-bundler'
gem 'capistrano-rails'
gem 'capistrano-rbenv', '~> 2.0', '>= 2.0.4'
gem 'capistrano-sidekiq', '0.3.5'
gem 'capistrano-passenger'

# Use Unicorn as the app server
# gem 'unicorn'
gem 'rails_12factor', group: :production
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'rspec-rails', '~> 3.5'
  gem 'pry'
  gem 'factory_girl_rails', '~> 4.5'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

ruby "2.3.0"
