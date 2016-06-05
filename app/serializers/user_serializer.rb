class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :phone, :company_name, :description, :social_type, :social_token
end
