# curl command =>  curl -H "API-KEY: WwEsPpBqQDOaEJ4t" http://localhost:3000/api/v1/work_spaces
module Api
  module V1
    class WorkSpacesController < BaseController

      before_action :set_work_space, only: [:show, :update, :destroy]

      def index
        @work_spaces = WorkSpace.all

        render json: @work_spaces
      end

      def show
        render json: @work_space
      end

      def create
        @work_space = WorkSpace.new(work_space_params)

        if @work_space.save
          render json: @work_space, status: :created, location: @work_space
        else
          render json: @work_space.errors, status: :unprocessable_entity
        end
      end

      def update
        if @work_space.update(work_space_params)
          render json: @work_space
        else
          render json: @work_space.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @work_space.destroy
      end

      private

        def set_work_space
          @work_space = WorkSpace.find(params[:id])
        end

        def work_space_params
          params.require(:work_space).permit(:name, :description, :no_of_seats)
        end
    end
  end
end
