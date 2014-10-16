
require 'rails_helper'

describe UnitsController do

  describe 'GET #index' do
    it "populates an array of units" do
      @new_unit = FactoryGirl.create(:unit)
      get :index
      expect(assigns(:units)).to eq [@new_unit]
    end
    it "renders the :index view" do
      get :index
      expect(response).to render_template :index
    end
  end


  describe 'GET #show' do
    it "assigns the requested unit to @unit" do
      @unit = FactoryGirl.create(:unit)
      get :show, id: @unit
      expect(response).to render_template(:show)
    end
    it "renders the :show template" do
      @unit = FactoryGirl.create(:unit)
      get :show, id: @unit
      expect(response).to render_template(:show)
    end
  end


  describe 'GET #new' do
    it "assigns a new Unit to @unit" do
      get :new
      expect(assigns(:unit)).to be_a_new(Unit)
    end
    it "renders the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'GET #edit' do
    it "assigns the correct unit to @unit" do
      unit = FactoryGirl.create(:unit)
      get(:edit, id: unit)
      expect(assigns(:unit)).to eq unit
    end
    it "renders the :edit template" do
      unit = FactoryGirl.create(:unit)
      get(:edit, id: unit)
      expect(response).to render_template :edit
    end
  end


  describe 'POST #create' do
    context "with valid attributes" do
      it "saves the new building in the database" do
        expect{ FactoryGirl.create(:unit) }.to change { Unit.count }.by(1)
      end
      it "redirects to the home page"
    end
    context "with invalid attributes" do
      it "does not save the new unit in the database" do
        expect{ 
          FactoryGirl.build(:unit, uPrice: nil).save
        }.not_to change { Unit.count }
      end
    end
  end


  describe '#update' do
    before { @unit = FactoryGirl.create(:unit) }
    context "with valid attributes" do
      it "locates the correct instance of unit" do
        patch :update, id: @unit, :unit => FactoryGirl.attributes_for(:unit)
        expect(assigns(:unit)).to eq(@unit)
      end
      it "updates the building in the database" do
        @unit2 = FactoryGirl.create(:unit)
        patch :update, id: @unit, :unit => @unit2.attributes 
        expect(assigns(:unit)).to eq(@unit)
      end
      it "redirects to the unit"
    end

    context "with invalid attributes" do
      it "does not update the unit" do
          patch(:update, id: @unit, :unit => FactoryGirl.attributes_for(:unit, uPrice: nil))
        expect(@unit.uPrice).not_to be_nil
      end
      it "re-renders the #edit template"
    end
  end

  describe 'DELETE #destroy' do
    it "deletes the building from the database"
    it "redirects to the home page"
  end
end