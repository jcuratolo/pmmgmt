class ListingsController < ApplicationController
  respond_to :json
  def index
      @listings = Listing.find_by_sql("SELECT * FROM buildings " + "INNER JOIN units ON buildings.id = units.building_id " + "WHERE \"uListing\" =true" )
      @buildings = Building.all
      #@listings_json = @listings
      #@listings = Unit.all
      #@listings = Unit.where(uListing:true)
      #@listings = Listings.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def api
    #respond_to :json
    @listings = Listing.find_by_sql("SELECT * FROM buildings " + "INNER JOIN units ON buildings.id = units.building_id " + "WHERE \"uListing\" =true" )
    respond_with @listings
  end

end
