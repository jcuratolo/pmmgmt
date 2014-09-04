require 'rails_helper'

describe BuildingsController do

  describe 'GET #index' do
    it "populates an array of buildings" do
      building = FactoryGirl.create(:building)
      get :index
      expect(assigns(:buildings)).to match_array [building]
    end
    it "renders the :index view" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do
    it "assigns the requested building to @building" do
      building = FactoryGirl.create(:building)
      get :show, id: building
      expect(assigns(:building)).to eq building
    end
    it "renders the :show template" do
      building = FactoryGirl.create(:building)
      get :show, id: building
      expect(response).to render_template :show
    end
  end

  describe 'GET #new' do
    it "assigns a new Building to @building" do
      get :new
      expect(assigns(:building)).to be_a_new(Building)
    end
    it "renders the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'GET #edit' do
    it "assigns the requested building to @building" do
      building = FactoryGirl.create(:building)
      get :edit, id: building
      expect(assigns(:building)).to eq building
    end
    it "renders the :edit template" do
      building = FactoryGirl.create(:building)
      get :edit, id: building
      expect(response).to render_template :edit
    end
  end

  describe 'POST #create' do
    context "with valid attributes" do
      it "saves the new building in the database" do
        expect do
          building = FactoryGirl.create(:building)
          post :create, id:  building
        end.to change(Building, :count).by(1)
      end
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