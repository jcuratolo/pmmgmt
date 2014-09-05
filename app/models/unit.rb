class Unit < ActiveRecord::Base
  belongs_to :building
  has_many :unitfeatures

  validates :uType, :uNumber, :uBedroomCount, :uBathroomCount, :uSquareFootage, :building_id, presence: true

  has_attached_file :unitimage, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :unitimage, :content_type => /\Aimage\/.*\Z/
end