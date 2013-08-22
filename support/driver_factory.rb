# encoding: utf-8
require 'singleton'

class DriverFactory
  include Singleton
  attr_reader :default_driver

  def init_default_browser
    @default_driver = Selenium::WebDriver.for(:firefox)
    @default_driver.manage.timeouts.implicit_wait = 10
    @default_driver.manage.delete_all_cookies
  end

  def self.driver
    instance.init_default_browser if instance.default_driver.nil?
    instance.default_driver
  end

  def self.quit
    instance.default_driver.quit
  end


end