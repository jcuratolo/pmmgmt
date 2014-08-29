class AddUListingToUnits < ActiveRecord::Migration
  def change
    add_column :units, :uListing, :boolean
  end
end
