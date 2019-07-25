FactoryBot.define do
  factory :department do
    name { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
  end
end
