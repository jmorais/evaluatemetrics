# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :resposta do
    avaliacao { Random.rand(0..10) }
    observacao { Faker::Lorem.sentence }
  end
end
