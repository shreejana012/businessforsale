require 'rails_helper'
RSpec.describe "User Sign in" do

  before do
   @user = User.create!(first_name: "Example user",
   middle_name: "middlename",
   last_name: "lastname",
   phone_number: "phonenumber",
   email: "user@example.com",
   password: "password",
   password_confirmation: "password")
 end
 scenario "sucessfully" do

   visit new_user_session_path

   fill_in "Email", with: "user@example.com"
   fill_in "Password", with: "password"
   click_on "Log in"
   expect(page).to have_content @user.email
 end

 scenario "unsucessfully" do
   visit new_user_session_path
   fill_in "Email",with: "user@example.com"
   fill_in "Password", with: ""
   click_on "Log in"
   expect(page).not_to have_content @user.email
 end

end
