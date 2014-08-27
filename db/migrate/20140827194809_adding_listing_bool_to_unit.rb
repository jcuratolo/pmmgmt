class AddingListingBoolToUnit < ActiveRecord::Migration
  def change
    add_column :units, :listing, :boolean
  end
end
