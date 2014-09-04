class UnitsController < ApplicationController
  def index
    @units = Unit.all
  end
  def show
    @unit = Unit.find(params[:id])
  end
  def new
    @unit = Unit.new
  end
  def create
    @unit = Unit.new(params.require(:unit).permit(:uNumber, :uType, :uBedroomCount, :uBathroomCount, :uSquareFootage, :building_id))
      if @unit.save
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
