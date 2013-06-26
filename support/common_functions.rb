def login(user)
  login_page = LoginPage.new(DriverFactory.driver, true)
  login_page.login(user['login'], user['pass'])
end