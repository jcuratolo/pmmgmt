class ListingsController < ApplicationController
  def index
      @listings = ListingReport.find_by_sql("SELECT building.id FROM buildings")
  end

end
