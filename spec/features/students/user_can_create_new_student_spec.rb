require 'rails_helper'

describe "User creates a new student" do
  scenario "a user can create a new student" do

    visit new_student_path

    fill_in "student[name]", with: "Samuel"
    click_button "Create"

    expect(current_path).to eq(students_path)
    expect(page).to have_content("Samuel")
  end
end
