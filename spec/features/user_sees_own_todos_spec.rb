require "rails_helper"

feature "User sees own todos" do
	scenario "Sees there own todos" do
		sign_up_with "peter@peter.com", "password"

		create_todo("peter's todo")

		expect(page).to have_todo("peter's todo")
	end

	scenario "doesn't see other people's todos" do
		sign_up_with "peter@peter.com", "password"

		create_todo("peter's todo")

		sign_out

		# Signs back in as generic user
		sign_in

		expect(page).not_to have_todo("peter's todo")
	end
end
