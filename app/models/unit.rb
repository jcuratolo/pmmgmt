class Unit < ActiveRecord::Base
  belongs_to :building
  has_many :unitfeatures

  validates :uType, :uNumber, :uBedroomCount, :uBathroomCount, :uSquareFootage, :building_id, presence: true
  
  def room_with(room_count)
    Unit.where(uBedroomCount: room_count.to_i)
  end

end
