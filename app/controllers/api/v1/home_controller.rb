class Api::V1::HomeController < ApplicationController

  def index
    @work_spaces = WorkSpace.all

    render json: @work_spaces
  end

end
