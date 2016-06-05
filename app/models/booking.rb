## bookings ##
## public:boolean
## user_id
## work_space_id
##
class Booking < ApplicationRecord

  belongs_to :user
  belongs_to :work_space
  
end
