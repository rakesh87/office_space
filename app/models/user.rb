## users ##
## email
## api_key
## 

class User < ApplicationRecord

  validates :email, presence: true, uniqueness: true

  has_secure_password

  before_create do |user|
    user.api_key = user.send(:generate_api_key)
  end

  has_many :addresses, as: :addressable
  has_many :bookings
  has_many :work_spaces, inverse_of: :user

  def profile_complete?
    email.present? && social? && phone_present? && about_description_present? && company_name_present? && has_address?
  end


  private
    def generate_api_key
      loop do
        token = SecureRandom.base64.tr('+/=', 'RAK')
        if !User.exists?(api_key: token)
          break token
        end
      end
    end

    def social?
      social_type == 'FACEBOOK' && social_token.present?
    end

    def has_address?
      addresses.any? 
    end

    def phone_present?
      phone.present?
    end

    def about_description_present?
      description.present?
    end

    def company_name_present?
      company_name.present?
    end
end
