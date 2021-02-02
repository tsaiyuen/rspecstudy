FactoryBot.define do
  factory :weapon do
    name { FFaker::AnimalES }
    description { FFaker::LoremAR }
    power_base { Random.rand(3000..999999) }
    power_step { 100 }
    level { Random.rand(1..99) }
  end
end
