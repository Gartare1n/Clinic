FactoryBot.define do
  factory :doctor do 
    email { "john.doe@example.com" }
    password { "password" }
    #active true
  end

  factory :random_doctor, class: Doctor do 
    email { Faker::Internet.safe_email }
    password { Faker::Internet.password }
  end
end