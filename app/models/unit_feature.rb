class UnitFeature < ActiveRecord::Base
  belongs_to :unit
  validates :ufName, :unit_id, presence: true
end
