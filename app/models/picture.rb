class Picture < ApplicationRecord

  belongs_to :picturable, polymorphic: true
  
end
