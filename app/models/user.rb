## users ##
## email
## api_key
## 

class User < ApplicationRecord

  has_secure_password

  before_create do |user|
    user.api_key = user.send(:generate_api_key)
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
end
