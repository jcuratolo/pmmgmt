require 'rails_helper'

describe Unit do 
  it "has a valid factory" do 
    FactoryGirl.create(:unit).should be_valid 
  end
  it "is invalid without a number" do 
    FactoryGirl.build(:unit, uNumber: nil).should_not be_valid 
  end
  it "is invalid without a type" do 
    FactoryGirl.build(:unit, uType: nil).should_not be_valid
  end
  it "is invalid without a bedroom count" do 
    FactoryGirl.build(:unit, uBedroomCount: nil).should_not be_valid 
  end
  it "is invalid without a bathroom count" do 
    FactoryGirl.build(:unit, uBathroomCount: nil).should_not be_valid 
  end
  it "is invalid without square footage" do 
    FactoryGirl.build(:unit, uSquareFootage: nil).should_not be_valid 
  end
  it "is invalid without a building_id" do 
    FactoryGirl.build(:unit, building_id: nil).should_not be_valid 
  end
end