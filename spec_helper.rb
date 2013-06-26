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
require_relative 'page/login_page'

def read_config
  config = YAML.load_file('config.yml')
  $admin = config['admin']
end

read_config
FileUtils::mkdir_p('logs') unless FileTest::directory?('logs')
$log = Logger.new ('logs//tests.log')

RSpec.configure do |config|
  config.before(:all) do
    DriverFactory.init_default_browser
  end

  config.after(:all) do
    DriverFactory.quit
  end
end