require 'faker'

FactoryGirl.define do
  factory :building do
    bName { Faker::Name.name }
    bAddress1 { Faker::Address.street_address }
    bCity { Faker::Address.city }
    bState { Faker::Address.state }
    bZip { Faker::Address.zip }
    bPhone { Faker::PhoneNumber.phone_number }
    bUnitCount { Faker::Number.number(3) }

    factory :invalid_building do
      bName nil
    end
  end
end
