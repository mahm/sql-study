source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'dotenv-rails', require: 'dotenv/rails-now'
gem 'rails', '5.2.2'
gem 'bootsnap'

gem 'pg'
gem 'puma'
gem 'webpacker', '4.0.2'
gem 'jb'
gem 'hamlit-rails'
gem 'seed-fu'

gem 'bugsnag'
gem 'newrelic_rpm'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'factory_bot_rails'
end

group :development do
  gem 'foreman'
  gem 'web-console'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'spring-commands-rspec'
end

group :test do
  gem 'capybara'
  gem 'chromedriver-helper'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
  gem 'simplecov'
end
