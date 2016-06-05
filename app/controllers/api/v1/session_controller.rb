class Api::V1::SessionController < ApplicationController

  def sign_up
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: api_v1_user_url(@user)
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def sign_in
    # to do
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :confirm_password, :phone)
    end
end
