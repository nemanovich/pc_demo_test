# encoding: utf-8
require_relative '../spec_helper'
require_relative '../page/main_page'

describe 'inbox folder' do
  before(:all) do
    @page = MainPage.new(DriverFactory.driver)
    @page.goto
    @page.mail_group_element.click
    @page.inbox_folder
  end
  context 'when mail title selected' do
    it 'title is visible' do
      @page.mail_titles_elements.each do |title|
        title.click
        title.visible?.should be_true
      end
    end
  end

  describe 'delete first mail' do
    before(:all) do
      @mail_title = @page.mail_titles_elements[0].text
      @page.uncheck_all
      @page.mail_checkbox_elements[0].click
      @page.delete_element.click
      sleep 3
    end
    it('mail not found') { @page.mail_titles_elements[0].text.should_not == @mail_title }
  end
end