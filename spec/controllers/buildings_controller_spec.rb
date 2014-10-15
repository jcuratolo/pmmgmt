require 'rails_helper'

describe BuildingsController do


  describe "GET index" do
    it "should render the correct template" do
      get :index
      expect(response).to render_template(:index)
    end
  end


  describe "GET #show" do
    it "assigns a new Building to @building" do
      @building = FactoryGirl.create(:building)
      get :show, id: @building 
    end
    it "should render the correct template" do
      @building = FactoryGirl.create(:building)
      get :show, id: @building
      expect(response).to render_template(:show)
    end
  end


  describe "#new" do
    it "should render the correct template" do
      get :new
      expect(response).to render_template(:new)
    end
    it "assigns a new Building to @building" do
      get :new
      expect(assigns(:building)).to be_a_new(Building)
    end
  end


  describe "#create" do
    context "with valid attributes" do
      it "should be valid" do
        building = FactoryGirl.build(:building)
        expect(building).to be_valid
      end
      it "should create a new building" do
        expect{ FactoryGirl.create(:building) }.to change { Building.count }.by 1
      end
    end

    context "with invalid attributes" do
      it "should not be valid" do
        expect(FactoryGirl.build(:invalid_building)).not_to be_valid
      end
      it "should not create a new building" do
        expect{ FactoryGirl.build(:invalid_building).save}.not_to change { Building.count }
      end
    end
  end


  describe "#edit" do
    it "assings the correct Building to @building" do
      building = FactoryGirl.create(:building)
      get :edit, id: building
      expect(assigns(:building)).to eq building 
    end
    it "should render the correct template" do
      building = FactoryGirl.create(:building)
      get :edit, id: building
    end
  end


  describe "#update" do
    before { @building = FactoryGirl.create(:building) }
    context "with valid attributes" do
      it "locates the correct instance of Building" do
        patch :update, id: @building, :building => FactoryGirl.attributes_for(:building)
        expect(assigns(:building)).to eq(@building)
      end
      it "updates @building's attributes" do        
        @building2 = FactoryGirl.create(:building)
        patch :update, id: @building, :building => @building2.attributes
        expect(assigns(:building)).to eq(@building)
      end
    end
  end


  describe "#destroy" do
    before { @building = FactoryGirl.create(:building) }
    it "delets the instance of Building" do
      expect{ delete(:destroy, id: @building) }.to change(Building, :count).by(-1)
    end
    it "redirects to buildings#index after deleting" do
      delete(:destroy, id: @building)
      expect(response).to redirect_to buildings_url
    end
  end
end