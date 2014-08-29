class Building < ActiveRecord::Base
  has_many :units
  has_many :building_features
end
