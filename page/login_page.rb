require_relative '../support/const'

class LoginPage
  include PageObject

  page_url Const::BASE_URL

  text_field(:login, id: 'username')
  text_field(:pass, id: 'password')
  button(:submit, id: 'subm')

  def login(username, password)
    self.login_element.value = username
    self.pass_element.value = password
    submit
  end

end