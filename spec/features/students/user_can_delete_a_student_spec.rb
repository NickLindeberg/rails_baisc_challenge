require 'rails_helper'

describe "User deletes existing student" do
  scenario "a user can delete a student" do
    student = Student.create(name: "Joey")
    visit students_path

    click_link "Delete"

    expect(page).to_not have_content("Joey")
  end
end
