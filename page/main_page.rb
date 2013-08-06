# encoding: utf-8
require_relative '../support/const'

class MainPage
  include PageObject

  page_url 'http://labs.infragistics.com/aspnet/showcases/MyMail/EmailClient.aspx#'
  link(:delete, id: 'DeleteItem')
  cell(:mail_group, class: 'igeb_myMailGroupLink')
  link(:inbox_folder) {link_element(id: 'NumberOfOpenItems').parent}
  cells(:mail_titles, xpath: ".//*[@class = 'ig_myMailItem igg_myMailItem']/tr/td[5]")
  image(:header_checkbox, xpath: ".//*[@class = 'igg_myMailHeaderCaption'][1]/img")
  images(:mail_checkbox, xpath: ".//*[@class = 'ig_myMailItem igg_myMailItem']/tr/td[1]/img")

  def uncheck_all
    header_checkbox_element.click if header_checkbox_element.attribute('title') == 'Unchecked'
    header_checkbox_element.click
  end

  def product_title
    products_title_elements[0].text
  end
end