# encoding: utf-8
require_relative '../spec_helper'
require_relative '../page/portal_page'

describe 'search price' do
  before { page.goto }
  subject(:page) { PortalPage.new(DriverFactory.driver) }

  context 'when price exist' do
    before { page.search 'Труба' }
    it { expect(page.product_title).to include 'Труба' }
  end

  context 'when price non exist' do
    before { page.search 'несуществующийтовар' }
    it { expect(page.search_result).to include 'нет предложений' }
  end
end