# require 'byebug'
class Api::UserProfileController < ApplicationController
  # Update followers
  def update
    debugger
    @follow = Follow.create!(user_id: current_user.id, followee_id: params[:id]);
    render 'api/user_profile/show'
  end

  def destroy
  
  end
end
