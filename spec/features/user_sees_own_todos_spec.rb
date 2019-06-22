require "rails_helper"

feature "User sees own todos" do
	scenario "doesn't see other people's todos" do
		Todo.create!(title: "peter's todo", email: "peter@schulz.com")

		sign_in_as "peter@peter.com"

		expect(page).not_to have_todo("peter's todo")
	end
end
