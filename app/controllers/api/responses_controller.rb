class Api::ResponsesController < ApplicationController
  def index
    @responses = Response.all
    render 'api/responses/index'
  end

  def create
    @response = Response.new(response_params)
    @response.author_id = current_user.id
    @response.story_id = params[:story_id]
    if @response.save
      render '/api/responses/show'
    else
      render json: @response.errors.full_messages, status: 422
    end
  end

  private
  def response_params
    params.require(:response).permit(:body)
  end
end