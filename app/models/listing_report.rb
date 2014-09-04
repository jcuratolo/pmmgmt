class ListingReport < ActiveRecord::Base
  has_many :buildings
  has_many :units, through: :buildings
  has_many :building_features, through: :buildings
  
end
