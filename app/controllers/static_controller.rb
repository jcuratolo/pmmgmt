class StaticController < ApplicationController

  def index
    @units = Unit.all
    @results = Units.where(uBedroomCount:room_with)
  end  
end
