require 'faker'

FactoryGirl.define do
  factory :building do |f|
    f.bName { Faker::Name.name }
    f.bAddress1 { Faker::Address.street_address }
    f.bCity { Faker::Address.city }
    f.bState { Faker::Address.state }
    f.bZip { Faker::Address.zip }
    f.bPhone { Faker::PhoneNumber.phone_number }
    f.bUnitCount { Faker::Number.number(3) }
  end
end
