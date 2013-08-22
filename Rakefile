# encoding: utf-8
require_relative 'spec_helper'
require_relative 'support/product'

desc 'update goods'
task :update_goods do
  PriceLoader.get_companies_prices.each do |price|
    login_by_token price[:token]
    price[:goods].each do |product_url|
      Product.new(product_url).actualize
    end
  end
  DriverFactory.quit
end