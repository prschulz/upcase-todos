require "rails_helper"

feature "User creates todo" do
	scenario "successfully" do
		sign_in
		create_todo("my todo")

		expect(page).to have_todo("my todo")
	end
end
