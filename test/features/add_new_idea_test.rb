require 'test_helper'

feature 'Add new idea' do
  scenario 'has listing ideas' do
    visit('/ideas')

    page.must_have_content('Listing ideas')
  end

  scenario 'Add new idea' do
    visit('/ideas')
    click_on('New Idea')
    page.must_have_content('New idea')

    fill_in('Name', with: 'すごいアイディア')
    fill_in('Description', with: 'プリンに醤油をかけるとウニの味がする')
    fill_in('Picture', with: 'pudding_shoyu.jpg')
    click_on('Save')

    page.must_have_content('Idea was successfully created.')
  end
end
