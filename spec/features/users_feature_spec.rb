require 'rails_helper'

RSpec.describe "Users Authentication", type: :feature do
	it 'allows users to succesfully sign up' do
		a = create(:user)
		visit new_user_registration_path
		fill_in('Name', :with => a.name)
		fill_in('Email', with: a.email)
		fill_in('Password', with: a.password,:match => :prefer_exact)
		fill_in('Password confirmation', with: a.password,:match => :prefer_exact)
		click_button('Sign Up')
		expect(page).to have_content('Discover upcoming events')
	end
	it 'allows users to login with email and password' do
		b = create(:user)
		visit new_user_session_path
		fill_in('Email', with: b.email)
		fill_in('Password', with: b.password)
		click_button('Log in')
		expect(page).to have_content('Discover upcoming events')
	end
end
