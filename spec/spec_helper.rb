require 'rubygems'
require 'spork'
require 'capybara/rspec'
require 'factory_girl_rails'

Spork.prefork do

  ENV["RAILS_ENV"] ||= 'test'

  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'
  require 'rspec/autorun'

  Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

  ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

  RSpec.configure do |config|
    config.fixture_path = "#{::Rails.root}/spec/fixtures"
    config.use_transactional_fixtures = true
    config.infer_base_class_for_anonymous_controllers = false
    config.order = "random"
    config.fail_fast = true
    config.expect_with :rspec do |c|
      c.syntax = :expect
    end
    config.include Capybara::DSL
    config.include Devise::TestHelpers, type: :controller
    config.include FactoryGirl::Syntax::Methods
  end
end

Spork.each_run do
  require 'simplecov'
  require 'shoulda/matchers'
  SimpleCov.start do
    add_filter '/spec/'
    add_filter '/vendor/'
  end
  FactoryGirl.reload
end