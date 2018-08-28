require 'rails_helper'

describe "User sees a specific student" do
  scenario "a user sees a student" do
    student = Student.create(name: "Joe")

    visit student_path(student)
save_and_open_page
    expect(page).to have_content(student.name)
  end
end
