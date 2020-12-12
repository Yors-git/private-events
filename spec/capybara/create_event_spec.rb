require 'rails_helper'

RSpec.describe 'Private-Events', type: :system do
  describe 'signUp' do
    scenario 'signup a new user' do
      visit 'users/new'
      fill_in :user_username, with: 'Capybara'
      fill_in :user_email, with: 'capybara@test.com'
      click_button 'Create User'
      expect(page).to have_content('Capybara please click "Events" or "Users" on the navbar to see a list')
      click_on 'New Event'
      fill_in :event_title, with: 'Capybara Party'
      fill_in :event_date_of_event, with: '2021/10/20'
      fill_in :event_place, with: 'Capybara field'
      fill_in :event_description, with: 'Capybara annual meeting'
      click_button 'Create Event'
      expect(page).to have_content('Capybara Party show details')
    end
  end
end
