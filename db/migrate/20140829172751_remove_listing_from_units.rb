class RemoveListingFromUnits < ActiveRecord::Migration
  def change
    remove_column :units, :listing, :boolean
  end
end
