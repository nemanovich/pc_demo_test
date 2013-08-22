# encoding: utf-8
class PriceLoader

  @@store = YAML::Store.new File.expand_path('../../price.store', __FILE__)

  class << self
    def get_companies_prices
      @@store.transaction(true) do
        @@store['price']
      end
    end
  end
end