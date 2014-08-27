class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :bName
      t.string :bAddress1
      t.string :bAddress2
      t.string :bCity
      t.string :bState
      t.string :bZip
      t.string :bPhone
      t.string :bUnitCount

      t.timestamps
    end
  end
end
