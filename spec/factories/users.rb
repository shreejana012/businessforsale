FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "random#{n}user@example.com"
    end
    first_name "firstname"
    middle_name "middlename"
    last_name "lastname"
    phone_number "9800000000"
    password "password"
    password_confirmation "password"
  end
end
