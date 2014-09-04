require 'rails_helper'

describe Building do
  it "has a valid factory" do
    FactoryGirl.create(:building).should be_valid
  end
  it "is invalid without a name" do
    FactoryGirl.build(:building, bName: nil).should_not be_valid
  end
  it "is invalid without a address line 1" do
    FactoryGirl.build(:building, bAddress1: nil).should_not be_valid
  end
  it "is invalid without a city" do
    FactoryGirl.build(:building, bCity: nil).should_not be_valid
  end
  it "is invalid without a state" do
    FactoryGirl.build(:building, bState: nil).should_not be_valid
  end
  it "is invalid without a zip code" do
    FactoryGirl.build(:building, bZip: nil).should_not be_valid
  end
end