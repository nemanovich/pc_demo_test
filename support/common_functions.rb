# encoding: utf-8
require_relative '../spec_helper'
def login(user)
  login_page = LoginPage.new(DriverFactory.driver, true)
  login_page.login(user['login'], user['pass'])
end

def login_by_token(token)
  DriverFactory.driver.get(Const::BASE_URL + '/user/?u=' + token)
end