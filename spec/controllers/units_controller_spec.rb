
require 'rails_helper'

describe UnitsController do

  describe 'GET #index' do
    it "populates an array of units" do
      unit = FactoryGirl.create(:unit)
      get :index
      expect(assigns(:units)).to match_array [unit]
    end
    it "renders the :index view" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do
    it "assigns the requested unit to @unit" do
      unit = FactoryGirl.create(:unit)
      get :show, id: unit
      expect(assigns(:unit)).to eq unit
    end
    it "renders the :show template" do
      unit = FactoryGirl.create(:unit)
      get :show, id: unit
      expect(response).to render_template :show
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
    it "assigns the requested unit to @unit" do
      unit = FactoryGirl.create(:unit)
      get :edit, id: unit
      expect(:unit).to eq unit
    end
    it "renders the :edit template" do
      unit = FactoryGirl.create(:unit)
      get :edit, id: unit
      expect(assigns(:unit)).to eq unit
    end
  end

  describe 'POST #create' do
    context "with valid attributes" do
      it "saves the new building in the database"
      it "redirects to the home page"
    end

    context "with invalid attributes" do
      it "does not save the new building in the database"
      it "re-renders the :new template"
    end
  end

  describe 'PUT #update' do
    context "with valid attributes" do
      it "updates the building in the database"
      it "redirects to the building"
    end

    context "with invalid attributes" do
      it "does not update the message"
      it "re-renders the #edit template"
    end
  end

  describe 'DELETE #destroy' do
    it "deletes the building from the database"
    it "redirects to the home page"
  end
end