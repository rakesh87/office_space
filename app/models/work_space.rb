## work_spaces ##
## name
## description
## no_of_seats
## 
class WorkSpace < ApplicationRecord

  validates :name, :description, :no_of_seats, presence: true

  belongs_to :user, inverse_of: :work_spaces
  belongs_to :city
  has_one :address, as: :addressable
  has_many :bookings
  has_many :work_space_amenities
  has_many :aminities, through: :work_space_amenities
  has_many :pictures, as: :picturable
  
end
