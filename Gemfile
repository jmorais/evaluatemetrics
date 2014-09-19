#ruby=2.0.0@rails4_0

source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '4.0.9'

group :development, :test do
  gem 'sqlite3', '1.3.8'
  gem 'rspec-rails', '2.14.0'
  gem 'guard-rspec', '2.5.0'
  gem 'terminal-notifier-guard'
  gem 'spork-rails', '4.0.0'
  gem 'guard-spork', '1.5.0'
  gem 'childprocess'
  gem 'factory_girl_rails', require: false
  gem 'shoulda-matchers', require: false
  gem 'bullet'
end

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'
  gem 'faker'
  gem 'launchy'
  gem 'database_cleaner'
  gem 'simplecov', require: false
end

gem 'sass-rails', '4.0.1'
gem 'uglifier', '2.1.1'
gem 'coffee-rails', '4.0.1'
gem 'jquery-rails', '3.0.4'
gem 'turbolinks', '1.1.1'
gem 'jbuilder', '1.0.2'
gem 'devise'
gem 'marginalia'

group :doc do
  gem 'sdoc', '0.3.20', require: false
end

group :production do
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2'
end