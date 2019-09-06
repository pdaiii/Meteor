class Api::FollowsController < ApplicationController
  def create
    # @follow = Follow.new(user_id: current_user.id, followee_id: params[:id]);
    @follow = current_user.users_followed.create!(followee_id: params[:user_id]);
    # @follow = Follow.create!(user_id: current_user.id, followee_id: params[:id]);
    # render 'api/user_profile/show'
  end

  def destroy

  end

  private
  def follow_params
    params.require(:follow).permit(:user_id);
  end
end
