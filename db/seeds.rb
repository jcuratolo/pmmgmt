require 'csv'
require 'Faker'
# Seed the database with some test data
CSV.foreach("#{Rails.root}/db/seed_data.csv") do |row|
  Building.create!(:bName => row[0],:bAddress1 => row[1],:bAddress2 => row[2], :bCity => row[3], :bState => row[4], :bZip => row[5], :bPhone => row[6])
  last_building = Building.last
  last_building.bUnitCount = rand(20)
  for i in 0..last_building.bUnitCount
  	u_type = get_unit_type
  	b_feat = get_building_feature

  	last_building.unit.create(uNumber: i, uType: u_type, uBedroomCount: u_type == 'studio' ? 0 : rand(3), uBathroomCount: u_type == 'studio' ? 0 : rand(3), uSquareFootage: rand(2000), uPrice: rand(4000), uListing: rand(2)==1, uDescription: Faker::Lorem.paragraph )
end

$unit_types = ['apartment', 'condominium', 'studio']
$building_features = ['tennis courts','pool','jacuzzi','fitness center','controlled access','assigned parking','central air']

def get_unit_type
	$unit_types[rand($unit_types.length)]
end

def get_building_feature
	$building_features[rand($building_features.length)]
end
