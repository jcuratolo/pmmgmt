class Building < ActiveRecord::Base
  has_many :units
  has_many :building_features
  validates :bName, :bAddress1, :bCity, :bState, :bZip, presence: true
  validates :bUnitCount, numericality: true, allow_nil: true
end
