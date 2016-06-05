## work_space_amenities ##
## amenity_id
## work_space_id
##
class WorkSpaceAmenity < ApplicationRecord

  belongs_to :work_space
  belongs_to :amenity

end
