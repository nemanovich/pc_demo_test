# encoding: utf-8

class EditProductPage
  include PageObject

  button(:submit, id: 'product_submit')
  text_field(:name, id: 'product_name')
end