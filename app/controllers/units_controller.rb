class UnitsController < ApplicationController
  #before_action :check_for_user

  def check_for_user
    if !current_user
      redirect_to root_url
    end
  end 

  def index
    @units = Unit.all
    @unit = Unit.new
    @buildings = Building.all
    @building = Building.new
  end

  def show
    @unit = Unit.find(params[:id])
    @buildings = Building.all
  end

  def new
    @unit = Unit.new
  end

  def create
    @unit = Unit.new(params.require(:unit).permit(:uNumber, :uType, :uBedroomCount, :uBathroomCount, :uSquareFootage, :building_id, :uListing, :uDescription, :unitimage, :unitimage2, :unitimage3, :unitimage4, :uPrice, :bucket))

      if @unit.save
        redirect_to units_path
      else 
        render 'new'
      end
  end

  def user_params
    params.require(:user).permit(:unitimage)
  end

  def edit
    @unit = Unit.find(params[:id])
  end

  def update
    @unit = Unit.find(params[:id]) 
      if @unit.update_attributes(params.require(:unit).permit(:uNumber, :uType, :uBedroomCount, :uBathroomCount, :uSquareFootage, :building_id, :uListing, :uDescription, :unitimage, :unitimage2, :unitimage3, :unitimage4, :uPrice, :bucket))
        redirect_to units_path 
      else
        render 'edit' 
      end
  end

  def destroy
    @unit = Unit.find(params[:id])
      @unit.destroy
      redirect_to units_path
  end

  # private

  # def unit_params
  #   params.require(:unit).permit(:uNumber, :uType, :uBedroomCount, :uBathroomCount, :uSquareFootage, :building_id, :uListing, :uDescription, :unitimage, :uPrice)
  # end
end
