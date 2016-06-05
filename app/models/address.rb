## addresses ##
## address1
## address2
## city
## pincode
## 
class Address < ApplicationRecord

  validates :address1, :address2, :city, :zipcode, presence: true

  belongs_to :addressable, polymorphic: true

end
