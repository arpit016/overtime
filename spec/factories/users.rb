FactoryGirl.define do
  sequence :email do |n|
    "tests#{n}@overtime.com"
  end
  
  factory :user do
    first_name "John"
    last_name  "Doe"
    email { generate :email }
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end
  
  factory :admin_user, class: "AdminUser" do
    first_name "Admin"
    last_name  "Doe"
    email { generate :email }
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end
end