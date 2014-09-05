class ListingsController < ApplicationController
  def index
      @listings = Listing.find_by_sql("SELECT * FROM buildings " + "INNER JOIN units ON buildings.id = units.building_id " + "WHERE \"uListing\" =true" )
      @listings = Unit.all
      #@listings = Unit.where(uListing:true)
      @listings = Listing.all
      respond_with @listings
  end

  def show
    @listing = ListingReport.find(params[:id])
  end

end
