class Api::FollowsController < ApplicationController
  def create
    @follow = Follow.new(follow_params);
    @follow.follower_id = current_user.id;

    if @follow.save 
      render 'api/follows/show'
    else
      # Error 422: Unprocessable entity
      render json: @follow.errors.full_messages, status: 422
    end
  end

  def index
    debugger
    @follows = Follow.all
    render 'api/follows/index'
  end

  def show
    debugger
    # @follows = Follow.find_by_sql("SELECT * FROM follows WHERE user_id = follow_params");
    # sql = `SELECT * FROM follows WHERE user_id = ${follow_params}`
    @follows = Follow.where(user_id: params[:user_id]);
    render 'api/follows/index'
  end

  def destroy
    @follow = Follow.find(params[:id]);
    @follow.destroy
    @follows = Follow.all
    render 'api/follows/index'
  end

  private
  def follow_params
    params.require(:follow).permit(:user_id);
  end
end