# encoding: utf-8
require_relative '../support/const'

class PortalPage
  include PageObject

  page_url Const::BASE_URL
  text_field(:search_input, class: 'psfss-input')
  button(:search_button, class: 'psf-submit')
  links(:products_title, class: 'bp-title')
  h1(:search_result) { div_element(class: 'under-col').h1_element }

  def search(text)
    self.search_input= text
    self.search_button
  end

  def product_title
    products_title_elements[0].text
  end
end