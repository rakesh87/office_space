# curl command =>  curl -H "API-KEY: WwEsPpOCYKBqQDOaEJ4t" http://localhost:3000/api/v1/users
module Api
  module V1
    class UsersController < BaseController
      
      before_action :set_user, only: [:show, :update, :destroy]

      def index
        @users = User.all

        render json: @users
      end

      def show
        render json: @user
      end

      def update
        if @user.update(user_params)
          render json: @user
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @user.destroy
      end

      private

        def set_user
          @user = User.find(params[:id])
        end

        def user_params
          params.require(:user).permit(:email, :phone)
        end
    end
  end
end
