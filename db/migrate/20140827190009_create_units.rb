class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :uNumber
      t.string :uType
      t.integer :uBedroomCount
      t.float :uBathroomCount
      t.integer :uSquareFootage
      t.text :uDescription

      t.timestamps
    end
  end
end