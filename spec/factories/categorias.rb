# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :categoria do
    nome { Faker::Lorem.sentence }
  end
end
