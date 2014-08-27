class CreateBuildingFeatures < ActiveRecord::Migration
  def change
    create_table :building_features do |t|
      t.string :bfName
      t.references :building, index: true

      t.timestamps
    end
  end
end
