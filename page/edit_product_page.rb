# encoding: utf-8

class EditProductPage
  include PageObject

  button(:submit, name: 'commit')
  text_field(:name, id: 'product_name')
end