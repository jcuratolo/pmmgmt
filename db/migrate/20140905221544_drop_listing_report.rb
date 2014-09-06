class DropListingReport < ActiveRecord::Migration
  def change
    drop_table :listing_reports
  end
end
