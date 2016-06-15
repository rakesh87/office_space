class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :phone, :company_name, :description, :social_type, :social_token, :api_key, :can_manage

  def can_manage
  	object.profile_complete?
  end
end
