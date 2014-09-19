# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :entrevistado do
    nome { Faker::Commerce.department }
    email { Faker::Internet.email }
  end
end
