  require 'csv'
require 'Faker'
# Seed the database with some test data


###############################################################################
# Just some information to help us populate the database
$unit_types = [
	'Apartment', 
	'Condominium', 
	'Studio'
]
$building_features = [
	'Tennis Courts',
	'Pool','Jacuzzi',
	'Fitness Center',
	'Controlled Access'
]
$unit_features = [
	'Assigned Parking',
	'Central Air',
	'Granite Countertops',
	'Stainless Steel Appliances', 
	'Hardwood Flooring'
]

def get_unit_type
	$unit_types[rand($unit_types.length)]
end

def get_unit_features
	$unit_features[rand($unit_features.length)]
end
	
def get_building_feature
	$building_features[rand($building_features.length)]
end
###############################################################################


# Read in csv file
CSV.foreach("#{Rails.root}/db/seed_data.csv") do |row|
  # Fill out the building attributes from the csv 
  last_building = Building.create!(
  	:bName => row[0],
  	:bAddress1 => row[1],
  	:bAddress2 => row[2], 
  	:bCity => row[3], 
  	:bState => row[4], 
  	:bZip => row[5], 
  	:bPhone => row[6], 
  	:bUnitCount => rand(20) )
  
  # Fill out the the properties for the building's units
  for i in 0..last_building.bUnitCount
  	u_type = get_unit_type
  	last_building.units.create(
  		uNumber: i, 
  		uType: u_type, 
  		uBedroomCount: u_type == 'studio' ? 0 : rand(3), 
  		uBathroomCount: u_type == 'studio' ? 1 : rand(3), 
  		uSquareFootage: rand(2000), uPrice: rand(4000), 
  		uListing: rand(2)==1, 
  		uDescription: Faker::Lorem.paragraph )
  	
  	# Create unit features and give them names
  	for i in 0..rand(11)
  	  last_building.units.last.unit_features.create(ufName: get_unit_features)
  	end
  end

  # Create building features and give them names
  for i in 0..rand(11)
    last_building.building_features.create!(bfName: get_building_feature)
  end

  last_building.save
end

