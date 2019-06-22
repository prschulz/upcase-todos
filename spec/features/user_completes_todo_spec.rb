require "rails_helper"

feature "User completes todo" do
  scenario "successfully" do
    sign_in

    create_todo("my todo")

    click_on "Complete"

    expect(page).to have_completed_todo("my todo")
  end

end
