require 'rails_helper'

describe "User sees a all students" do
  scenario "user visits /students and see students" do
    s1 = Student.create(name: "Joe")
    s2 = Student.create(name: "Sally")

    visit students_path
save_and_open_page
    expect(page).to have_content(s1.name)
    expect(page).to have_content(s2.name)
  end
end
