require 'rails_helper'

RSpec.describe 'Private-Events', type: :system do
  describe 'signUp' do

    scenario 'signup a new user' do
      visit 'users/new'
      fill_in :user_username, with: 'Capybara'
      fill_in :user_email, with: 'capybara@test.com'
      click_button 'Create User'
      expect(page).to have_content('Capybara please click "Events" or "Users" on the navbar to see a list')
    end
  end
end