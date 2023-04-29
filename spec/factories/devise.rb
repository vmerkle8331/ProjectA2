FactoryBot.define do
    factory :user do
      id {1}
      email {"test@user.com"}
      password {"qwerty"}
      # Add additional fields as required via your User model
      nickname { Faker::Name.last_name }
      email { Faker::Internet.free_email }
      password = Faker::Internet.password(min_length: 6)
      password { password }
      password_confirmation { password }
    end
end