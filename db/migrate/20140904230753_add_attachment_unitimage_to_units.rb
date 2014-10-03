class AddAttachmentUnitimageToUnits < ActiveRecord::Migration
  def self.up
    add_attachment :units, :unitimage
  end

  def self.down
    remove_attachment :units, :unitimage
  end
end
