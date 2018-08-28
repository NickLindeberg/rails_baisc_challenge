require 'rails_helper'

describe "User can update student" do
  xscenario "user can update name" do
    student = Student.create(name: "Joe")

    visit edit_student_path(student)
    save_and_open_page
    fill_in "student[name]", with: "Steve"

    expect(current_path).to eq(students_path)
    expect(page).to have_content("Steve")
    expect(page).to_not have_content("Joe")
  end
end
