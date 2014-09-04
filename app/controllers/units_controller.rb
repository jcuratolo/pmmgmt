class UnitsController < ApplicationController
  def index
    @units = Unit.all
    @unit = Unit.new
  end
  def show
    @unit = Unit.find(params[:id])
  end
  def new
    @unit = Unit.new
  end
  def create
<<<<<<< HEAD

    @unit = Unit.new(params.require(:unit).permit(:uNumber, :uType, :uBedroomCount, :uBathroomCount, :uSquareFootage, :building_id, :uListing, :uDescription))

=======
    @unit = Unit.new(params.require(:unit).permit(:uNumber, :uType, :uBedroomCount, :uBathroomCount, :uSquareFootage, :uDescription, :unitimage, :building_id))
>>>>>>> imageupload
      if @unit.save
        redirect_to units_path
      else 
        render 'new'
      end
  end

  def user_params
    params.require(:user).permit(:unitimage)
  end

  def destroy
  end

  def edit
  end

  def update
  end
end
