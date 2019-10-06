class Api::FollowsController < ApplicationController
  def create
    # debugger
    # @follow = Follow.new(user_id: current_user.id, followee_id: params[:id]);
    # @follow = current_user.users_followed.create!(followee_id: params[:user_id]);
    # @follow = Follow.create!(user_id: current_user.id, followee_id: params[:id]);
    # render 'api/user_profile/show'

    # When following a user, the current user must create a followee and the followee must add a new
    # follower.
    @follow = Follow.new(follow_params);
    # @follow.followee_id = current_user.id;
    @follow.follower_id = current_user.id;

    if @follow.save 
      render 'api/follows/show'
    else
      # Error 422: Unprocessable entity
      render json: @follow.errors.full_messages, status: 422
    end
  end

  def index
    @follows = Follow.all
    render 'api/follows/index'
  end

  def destroy
    debugger
    @follow = Follow.find(params[:id]);
    @follow.destroy
    render 'api/follows/show'
  end

  private
  def follow_params
    params.require(:follow).permit(:user_id);
  end
end
