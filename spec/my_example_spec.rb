# encoding: utf-8
require_relative '../spec_helper'

describe 'My behaviour' do
  before(:all) do
    login_page = LoginPage.new(DriverFactory.driver, true)
    puts $admin[:login]
    login_page.login($admin[:login], $admin[:pass])
  end

  it 'should do something' do

    #To change this template use File | Settings | File Templates.
    true.should == false
  end
end