class AddPriceToUnits < ActiveRecord::Migration
  def change
    add_column :units, :price, :float
  end
end
