class BuildingFeaturesController < ApplicationController
  def index
    @building_features = BuildingFeature.all
  end
  def show
    @buildings_feature = BuildingFeature.find(params[:id])
  end

  def new
    @building_feature = BuildingFeature.new
  end

  def create
    @building_feature = BuildingFeature.new(params.require(:building_feature).permit(:bfName, :building_id))
      if @building_feature.save
        redirect_to buildings_path
      else
        render 'new'
      end
  end

  def destroy
    @building_feature = BuildingFeature.find(params[:id])
      @building_feature.destroy
      redirect_to buildings_path
  end

  def update
  end

  def edit
  end
end
