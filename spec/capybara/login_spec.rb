require 'rails_helper'

RSpec.describe 'Private-Events', type: :system do
  describe 'login' do
    scenario 'login a user' do
      visit 'users/new'
      fill_in :user_username, with: 'Capybara'
      fill_in :user_email, with: 'capybara@test.com'
      click_button 'Create User'
      expect(page).to have_content('Capybara please click "Events" or "Users" on the navbar to see a list')
      click_on 'Logout'
      click_on 'Log in'
      fill_in :username, with: 'Capybara'
      click_button 'Login'
      expect(page).to have_content('Welcome, Capybara please click "Events" or "Users" on the navbar to see a list')
    end
  end
end
