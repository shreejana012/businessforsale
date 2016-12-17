require'rails_helper'
RSpec.describe"User Signup" do
  scenario "sucessfully" do
   business_listing = FactoryGirl.create(:user)
   visit new_user_registration_path
    fill_in "First Name", with: "name"
    fill_in "Middle Name", with: "middlename"
    fill_in "Last Name", with: "lastname"
    fill_in "Phone Number", with: "phonenumber"
    fill_in "Email",with: "example@user.com"
    fill_in "Password", with: "password"
    fill_in "Password Again",with: "password"
    click_on "Sign up"
    expect(page).to have_content "example@user.com"
  end
  scenario "unsucessfully"do
    visit new_user_registration_path
      fill_in "First Name", with: "name"
      fill_in "Middle Name", with: "middlename"
      fill_in "Last Name", with: "lastname"
      fill_in "Phone Number", with: "phonenumber"
      fill_in "Email",with: ""
      fill_in "Password", with: ""
      fill_in "Password Again", with: ""
      click_on "Sign up"
      expect(page).to have_content "error"
  end
end
