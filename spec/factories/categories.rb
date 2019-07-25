FactoryBot.define do
  factory :category do
    association :department, factory: :department
    name { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
  end
end
