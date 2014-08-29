class AddBuildingToUnit < ActiveRecord::Migration
  def change
    add_reference :units, :building, index: true
  end
end
