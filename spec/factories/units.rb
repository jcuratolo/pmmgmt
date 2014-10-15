require 'faker'

FactoryGirl.define do
  factory :unit do |f|
    f.uNumber { Faker::Number.number(1) }
    f.uType { Faker::Name.name }
    f.uBedroomCount { Faker::Number.number(1) }
    f.uBathroomCount { Faker::Number.number(1) }
    f.uSquareFootage { Faker::Number.number(4) }
    f.uPrice { Faker::Number.number(4) }
    f.building_id { Faker::Number.number(2) }
  end
end
