class AddAddressLine1ToListingReport < ActiveRecord::Migration
  def change
    add_column :listing_reports, :lbAddressLine1, :string
  end
end
