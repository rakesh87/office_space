class Api::V1::BaseController < ApplicationController
  # api base controller, try to put all common authentication here
  before_filter :user_api_key_authentication!


  private

    def user_api_key_authentication!
      api_key = request.headers['API-KEY']
      @user = User.where(api_key: api_key).first if api_key
     
      unless @user
        render :head, status: :unauthorized
        return false
      end
    end   
end