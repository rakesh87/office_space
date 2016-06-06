class WorkSpaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :no_of_seats

  belongs_to :city

  def city
    object.city.name
  end
  
end
