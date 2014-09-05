class AddUPriceToUnits < ActiveRecord::Migration
  def change
    add_column :units, :uPrice, :float
  end
end
