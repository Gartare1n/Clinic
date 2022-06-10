FactoryBot.define do
  factory :random_patient, class: Patient do 
    email { Faker::Internet.safe_email }
    password { Faker::Internet.password }
  end
end