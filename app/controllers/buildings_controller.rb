class BuildingsController < ApplicationController
  

  def index
    @buildings = Building.all
    @building = Building.new
    @unit = Unit.new
  end
  

  def show
    @building = Building.find(params[:id])
    @units = @building.units.all 
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
    @building = Building.find(params[:id])
  end
  
  
  def update
    @building = Building.find(params[:id]) 
      if @building.update_attributes(params.require(:building).permit(:bName, :bAddress1, :bAddress2, :bCity, :bState, :bZip, :bPhone, :bUnitCount ))
      redirect_to units_path
      else
      render 'edit' 
      end
  end

  
  def destroy
    @building = Building.find(params[:id])
      @building.destroy
      redirect_to buildings_path
  end
end
