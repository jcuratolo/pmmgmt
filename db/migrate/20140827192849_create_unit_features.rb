class CreateUnitFeatures < ActiveRecord::Migration
  def change
    create_table :unit_features do |t|
      t.string :ufName
      t.references :unit, index: true

      t.timestamps
    end
  end
end
