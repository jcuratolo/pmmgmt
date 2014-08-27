class Building < ActiveRecord::Base
  has_many :units
  has_many :buildingfeatures
end
