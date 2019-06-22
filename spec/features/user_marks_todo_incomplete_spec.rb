require "rails_helper"

feature "User marks todo incomplete" do
  scenario "successfully" do
    sign_in

    create_todo("my todo")

    click_on "Complete"
    click_on "Mark incomplete"

    expect(page).to_not have_completed_todo("my todo")
    expect(page).to have_todo("my todo")
  end

end
