# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :metrica do
    objetivo { Faker::Lorem.sentence }
    pergunta { Faker::Lorem.sentence }
    base_medicao { Faker::Lorem.sentence }
    suposicoes { Faker::Lorem.sentence }
    tendencia_experada { Faker::Lorem.sentence }
    quando_utilizar { Faker::Lorem.sentence }
    quando_parar { Faker::Lorem.sentence }
    manipulacao { Faker::Lorem.sentence }
    cuidados { Faker::Lorem.sentence }
    coleta { Faker::Lorem.sentence }
    classificacao_1 { Faker::Lorem.sentence }
    classificacao_2 { Faker::Lorem.sentence }
    classificacao_3 { Faker::Lorem.sentence }
  end
end
