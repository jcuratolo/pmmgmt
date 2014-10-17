class Building < ActiveRecord::Base
  extend ::Geocoder::Model::ActiveRecord
  has_many :units
  has_many :building_features
  #has_many :unit_features, through: :units

  geocoded_by :full_street_address
  after_validation :geocode

  validates :bName, :bAddress1, :bCity, :bState, :bZip, presence: true
  validates :bUnitCount, numericality: true, allow_nil: true

# This handy little method helps the geocoder and us when we want to output this to the views
  def full_street_address
    return "#{bAddress1}, #{bCity}, #{bState}"
  end

  def geo_center
    @buildings = Buildings.all 
    @buildings.each do |d|
      coords.push(d.full_street_address.coordinates)
      Geocoder::Calculations.geographic_center(coords)
    end
  end

  def lng_geo_center

  end
end
