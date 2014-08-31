require 'faker'

FactoryGirl.define do
  factory :UnitFeature do |f|
    f.ufName { Faker::Name.name }
    f.unit_id { Faker::Number.number(2) }
  end
end
