class Api::StoriesController < ApplicationController
  before_action :require_logged_in, only: [:create, :update, :destroy]

  def create
    if story_params[:image] == "null"
      new_story_params = story_params.except(:image)
      render json: ["You must include an image"], status: 400
    else
      @story = Story.new(story_params)
      @story.author_id = current_user.id
      if @story.save
        render 'api/stories/show'
      else
        render json: @story.errors.full_messages, status: 422
      end
    end
    # debugger

  end

  # Rendering a story show page.
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

  def update_likes
    @story = Story.find(params[:story_id])
    
    if @story.update_attribute(:count, story_params[:count])
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
    params.require(:story).permit(:title, :body, :image, :count)
  end
end
