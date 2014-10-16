require 'csv'
# Seed the database with some test data
CSV.foreach("#{Rails.root}/db/seed_data.csv") do |row|
  Building.create!(:bName => row[0],:bAddress1 => row[1],:bAddress2 => row[2], :bCity => row[3], :bState => row[4], :bZip => row[5], :bPhone => row[6], :bUnitCount => row[7])
end
