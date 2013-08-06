# encoding: utf-8
require 'rspec'
require 'selenium-webdriver'
require 'page-object'
require 'russian'
require 'vydumschik'
require 'ryba'
require 'logger'
require 'yaml'
require_relative 'support/driver_factory'
require_relative 'support/common_functions'

RSpec.configure do |config|
  config.before(:all) do
    DriverFactory.init_default_browser
    DriverFactory.driver.manage.window.maximize
  end

  config.after(:all) do
    DriverFactory.quit
  end
end