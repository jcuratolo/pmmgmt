class ListingsController < ApplicationController
  def index
      @listings = ListingReport.find_by_sql("SELECT * FROM buildings " + "INNER JOIN units ON buildings.id = units.building_id " + "WHERE \"uListing\" =true")
  end

end
