class Listing < ActiveRecord::Base
  has_many :buildings
  has_many :units, through: :buildings
  has_many :building_features, through: :buildings
  has_many :unit_features, through: :units
  has_attached_file :unitimage, :styles => { :large => "500x500", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :unitimage, :content_type => /\Aimage\/.*\Z/
end
