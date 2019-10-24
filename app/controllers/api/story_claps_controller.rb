class Api::StoryClapsController < ApplicationController
  def create
    # debugger
    @story_clap = StoryClap.new(story_clap_params);

    if @story_clap.save
      render '/api/story_claps/show'
    else
      # Unprocessable entity
      render json: @story_clap.errors.full_messages, status: 422
    end
  end

  def index
    @story_claps = StoryClap.all
    render '/api/story_claps/index'
  end

  def destroy
    # debugger
    @story_clap = StoryClap.find(params[:id])
    @story_clap.destroy
    @story_claps = StoryClap.all
    render '/api/story_claps/index'
  end

  private
  def story_clap_params
    params.require(:story_clap).permit(:story_id, :clapper_id)
  end
end