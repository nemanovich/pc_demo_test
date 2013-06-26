# encoding: utf-8
require_relative '../support/const'

class HomePage
  include PageObject

  page_url Const::BASE_URL + 'index.php?a=Home'
  h1(:welcome, id: 'page-head')
end