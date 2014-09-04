class CreateListingReports < ActiveRecord::Migration
  def change
    create_table :listing_reports do |t|

      t.timestamps
    end
  end
end
