FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@example.com" }

  factory :user do
    email
    password '123456'
    first_name 'John'
    last_name 'Lock'
    date_of_birth 'November 21 1992'
    admin false
  end

  factory :admin, class: User do
    email
    password 'admin'
    first_name 'Admin'
    last_name 'last name'
    admin true
  end
end
