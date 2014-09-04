require 'rails_helper'

describe UnitFeature do
  it "has a valid factory" do
    FactoryGirl.create(:UnitFeature).should be_valid
  end
  it "is invalid without a name" do
    FactoryGirl.build(:UnitFeature, ufName: nil).should_not be_valid
  end
  it "is invalid without a unit id" do
    FactoryGirl.build(:UnitFeature, unit_id: nil).should_not be_valid
  end
end