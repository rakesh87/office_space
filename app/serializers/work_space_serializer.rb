class WorkSpaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :no_of_seats, :city_id
end
