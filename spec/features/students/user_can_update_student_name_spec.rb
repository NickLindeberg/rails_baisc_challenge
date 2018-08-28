require 'rails_helper'

describe "User can update student" do
  scenario "user can update name" do
    student = Student.create(name: "Joe")

    visit edit_student_path(student)
    fill_in "student[name]", with: "Steve"

    click_button "Update"

    expect(current_path).to eq(student_path(student))
    expect(page).to have_content("Steve")
    expect(page).to_not have_content("Joe")
    expect(page).to have_content("All Students")
    expect(page).to have_content("Create New Student")

  end
end
