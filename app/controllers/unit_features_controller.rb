class UnitFeaturesController < ApplicationController
  def index
    @unit_features = Unit_feature.all
  end
  def show
    @unit_feature = Unit_feature.find(params[:id])
  end
  def new
    @unit_feature = Unit_feature.new
  end
  def create
    @unit_feature = Unit_feature.new(params.require(:unit).permit(:uNumber, :uType, :uBedroomCount, :uBathroomCount, :uSquareFootage))
      if @unit_feature.save
        redirect_to units_path
      else 
        render 'new'
      end 
  end
  def destroy
  end

  

  def edit
  end

  def update
  end
end
