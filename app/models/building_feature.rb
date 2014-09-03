class BuildingFeature < ActiveRecord::Base
  belongs_to :building

  validates :bfName, :building_id, presence: true
end
