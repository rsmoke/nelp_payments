FactoryBot.define do
  factory :user do
    # id {1}
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    # Add additional fields as required via your User model
  end

  # Not used in this tutorial, but left to show an example of different user types
  factory :admin_user do
    # id {2}
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    # admin {true}
  end
end