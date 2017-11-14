require 'rails_helper'

RSpec.feature "RegisterUsers", type: :feature do
  context "Registration page" do
    Steps "Going to Registration page" do
      Given "I visit localhost 3000:" do
        visit "/"
      end
      Then "I see Please Register!" do
        expect{page}.to_not raise_error
        expect(page).to have_content("Please Register!")
      end
      When "I enter information to register" do
        fill_in 'Username', with: 'admin'
        fill_in 'Password', with: 'admin'
        click_button 'Register'
      end
      Then 'I am taken to a page that shows I\'m registered' do
        expect(page).to have_content 'You are registered!'
      end
    end
  end
end
