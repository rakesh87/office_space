class Api::V1::SessionController < ApplicationController

  def sign_up
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created, location: api_v1_user_url(@user)
    else
      render json: {"errors": true, "message": @user.errors.messages }
    end
  end

  def sign_in
    user = find_user_by_email(params[:email])
    if user && user.authenticate(params[:password])
      render json: user
    else
      render json: {"errors": true, "message": 'Invalid User'}, status: :unprocessable_entity
    end
  end

  def get_user
    user = User.find(params[:id])
    if user
      render json: user
    else
      render json: {"errors": true, "message": 'Invalid User'}, status: :unprocessable_entity
    end
  end

  def mark_featured
    work_space = WorkSpace.find(params[:id])
    if work_space && work_space.update_attributes(featured: true)
      render json: work_space
    else
      render json: {"errors": true, "message": 'Invalid data'}, status: :unprocessable_entity
    end
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :phone)
    end

    def find_user_by_email(email)
      User.find_by(email: email)
    end
end
