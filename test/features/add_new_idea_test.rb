require 'test_helper'

feature 'Add new idea' do
  scenario 'has listing ideas' do
    visit '/ideas'

    page.must_have_content 'Listing ideas'
  end
end
