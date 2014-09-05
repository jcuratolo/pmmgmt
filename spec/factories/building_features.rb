require 'faker'

FactoryGirl.define do
  factory :BuildingFeature do |f|
    f.bfName { Faker::Name.name }
    f.building_id { Faker::Number.number(2) }
  end
end
