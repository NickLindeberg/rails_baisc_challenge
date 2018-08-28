require 'rails_helper'

describe "User creates a new student address" do
  scenario "a user can create a new student address" do
    student = Student.create(name: "Joey")

    visit new_student_address_path(student)
    

    expect(current_path).to eq(student_path)
    expect(page).to have_content("Samuel")


    expect(page).to have_content("All Students")
    expect(page).to have_content("Create New Student")

  end
end
