## amenities ##
## name
## description
## 
class Amenity < ApplicationRecord

  validates :name, presence: true
  
  has_many :work_space_amenities
  has_many :work_spaces, through: :work_space_amenities

end
