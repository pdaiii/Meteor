class Api::StoriesController < ApplicationController
  before_action :require_logged_in, only: [:create, :update, :destroy]

  def create
    @story = Story.new(story_params)
    @story.author_id = current_user.id
    if @story.save
      render 'api/stories/show'
    else
      render json: @story.errors.full_messages, status: 422
    end
  end

  def show
    @story = Story.find(params[:id])
    render 'api/stories/show'
  end

  def index
    @stories = Story.all
    render 'api/stories/index'
  end

  def update
    @story = Story.find(params[:id])
    if @story.update(story_params)
      render 'api/stories/show'
    else
      render json: @story.errors.full_messages, status: 422
    end
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy 
    @stories = Story.all
    render 'api/stories/index'
  end

  private
  def story_params
      params.require(:story).permit(:title, :body, :image)
  end
end
