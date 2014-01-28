# encoding: utf-8
class Product
  attr_accessor :url

  def initialize(url)
    @url = url
  end

  def actualize
    edit_page = EditProductPage.new(DriverFactory.driver)
    edit_page.navigate_to(@url + '/edit')
    name = edit_page.name
    edit_page.submit
    $log.info("ОК: #{@url} #{name}")
  end
end