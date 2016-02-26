FactoryGirl.define do
  factory :admin_user do
    email { Faker::Internet.email }
    password { Faker::Internet.password(10, 20) }
  end
end
