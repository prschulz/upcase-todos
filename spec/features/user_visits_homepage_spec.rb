require 'rails_helper'

feature "User visits homepage" do
	scenario "send to sign_in when user not logged in" do
		visit root_path

		expect(page).to have_css 'h2', text: 'Sign in'
	end

	scenario "send to todo index when logged in" do
		sign_in

		visit root_path

		expect(page).to have_css 'h1', text: 'Todos'
	end
end
