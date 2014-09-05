require 'rails_helper'

describe BuildingFeature do
  it "has a valid factory" do
    FactoryGirl.create(:BuildingFeature).should be_valid
  end
  it "is invalid without a name" do
    FactoryGirl.build(:BuildingFeature, bfName:nil).should_not be_valid
  end
  it "is invalid without a building id" do
    FactoryGirl.build(:BuildingFeature, building_id: nil).should_not be_valid
  end
end