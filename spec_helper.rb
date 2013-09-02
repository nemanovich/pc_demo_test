# encoding: utf-8
require 'rspec'
require 'selenium-webdriver'
require 'page-object'
require 'russian'
require 'vydumschik'
require 'ryba'
require 'logger'
require 'yaml/store'
require_relative 'support/const'
require_relative 'support/driver_factory'
require_relative 'support/common_functions'
require_relative 'support/price_loader'
require_relative 'page/edit_product_page'

def read_config
  config = YAML.load_file('config.yml')
  $admin = config['admin']
end

read_config
#FileUtils::mkdir_p('logs') unless FileTest::directory?('logs')
$log = Logger.new('main.log')
$log.formatter = proc do |severity, datetime, progname, msg|
     "#{datetime}: #{msg}\n"
  end

RSpec.configure do |config|
  config.before(:all) do
    DriverFactory.init_default_browser
  end

  config.after(:all) do
    DriverFactory.quit
  end
end