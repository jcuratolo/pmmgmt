require 'faker'

FactoryGirl.define do
  factory :unit do
    uNumber { Faker::Number.number(1) }
    uType { Faker::Name.name }
    uBedroomCount { Faker::Number.number(1) }
    uBathroomCount { Faker::Number.number(1) }
    uSquareFootage { Faker::Number.number(4)}
    building_id { Faker::Number.number(2) }
  end
end
