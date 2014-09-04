class StaticController < ApplicationController

  def index
    @buildings = Building.all
    @units = Unit.all
  end

end
