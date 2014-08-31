class Unit < ActiveRecord::Base
  belongs_to :building
  has_many :unitfeatures

  validates :uType, :uNumber, :uBedroomCount, :uBathroomCount, :uSquareFootage, :building_id, presence: true
end
