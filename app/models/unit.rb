class Unit < ActiveRecord::Base
  belongs_to :building
  has_many :unitfeatures
end
