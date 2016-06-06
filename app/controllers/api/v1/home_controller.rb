class Api::V1::HomeController < ApplicationController

  def index
    @work_spaces = WorkSpace.all

    render json: @work_spaces
  end

  def details
  	@work_space = WorkSpace.find(params[:id]) 
    render json: @work_space
  end

end
