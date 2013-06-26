# encoding: utf-8
require_relative '../spec_helper'
require_relative '../page/home_page'

describe 'login by admin' do
  before(:all) { login $admin }
  let(:home_page) {HomePage.new(DriverFactory.driver)}

  it 'welcome label' do
    home_page.welcome_element.text.should == 'WELCOME, ADMIN (ADMINISTRATORS)'
  end
end