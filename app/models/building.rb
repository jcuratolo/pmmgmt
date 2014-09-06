class Building < ActiveRecord::Base
  extend ::Geocoder::Model::ActiveRecord
  has_many :units
  has_many :building_features

  geocoded_by :bAddress1
  after_validation :geocode

  validates :bName, :bAddress1, :bCity, :bState, :bZip, presence: true
  validates :bUnitCount, numericality: true, allow_nil: true

  def full_street_address
    return bAddress1
  end
end
