class AddAttachmentUnitimageToUnits < ActiveRecord::Migration
  def self.up
    change_table :units do |t|
      t.attachment :unitimage
    end
  end

  def self.down
    remove_attachment :units, :unitimage
  end
end
