require 'rails_helper'

describe "User sees a specific student" do
  scenario "a user sees a student" do
    student = Student.create(name: "Joe")

    visit students_path

    click_link(student.name)

    expect(current_path).to eq(student_path(student))
    expect(page).to have_content(student.name)
    expect(page).to have_content("All Students")
    expect(page).to have_content("Create New Student")

  end
end
