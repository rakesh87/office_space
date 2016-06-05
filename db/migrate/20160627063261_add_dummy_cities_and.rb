class AddDummyCitiesAnd < ActiveRecord::Migration[5.0]
  def change
  	## add initial cities
  	['bangalore', 'delhi', 'gurgaon', 'noida', 'mumbai', 'chennai', 'hyderabad'].each do |city_name|
  		City.create(name: city_name)
  	end

  	## add initial amenities
  	['internet', 'canteen', 'power backup', '4 wheeler parking', 'ro water', 'fitness studio', 'spa', 'beer bar'].each do |amenity_name|
  		Amenity.create(name: amenity_name)
  	end
  end
end
