class Unit < ActiveRecord::Base
  belongs_to :building
  has_many :unitfeatures
  validates :uType, :uNumber, :uBedroomCount, :uBathroomCount, :uSquareFootage, :uPrice, :building_id, presence: true


  has_attached_file :unitimage,
  styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>',
    large: '500x500>' }, 
  :bucket => 'pmgmt'
  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :unitimage, :content_type => /\Aimage\/.*\Z/

  has_attached_file :unitimage2,
  styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>',
    large: '500x500>' }, 
  :bucket => 'pmgmt'
  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :unitimage2, :content_type => /\Aimage\/.*\Z/

  has_attached_file :unitimage3,
  styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>',
    large: '500x500>' }, 
  :bucket => 'pmgmt'
  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :unitimage3, :content_type => /\Aimage\/.*\Z/

  has_attached_file :unitimage4,
  styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>',
    large: '500x500>' }, 
  :bucket => 'pmgmt'
  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :unitimage4, :content_type => /\Aimage\/.*\Z/


  # pre s3 configs
  # has_attached_file :unitimage, :styles => { :medium => "300x300>", :side => "320x148", :listimg => "216x100>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  # validates_attachment_content_type :unitimage, :content_type => /\Aimage\/.*\Z/
end
