class AddAttachmentUnitimageToUnits < ActiveRecord::Migration
  def self.up
    add_attachment :units, :unitimage
    add_attachment :units, :unitimage2
    add_attachment :units, :unitimage3
    add_attachment :units, :unitimage4
  end

  def self.down
    remove_attachment :units, :unitimage
    remove_attachment :units, :unitimage2
    remove_attachment :units, :unitimage3
    remove_attachment :units, :unitimage4
  end
end
