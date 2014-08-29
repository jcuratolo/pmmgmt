class BuildingsController < ApplicationController
  def index
    @buildings = Building.all
  end
  def show
    @building = Building.find(params[:id])
  end
  def new
    @building = Building.new
  end
  def create
    @building = Building.new(params.require(:building).permit(:bName, :bAddress1, :bAddress2, :bCity, :bState, :bZip, :bPhone, :bUnitCount ))
      if @building.save
        redirect_to buildings_path
      else 
        render 'new'
      end 
  end
 
  def edit
  end
  def update
  end

  def destroy
  end
end
