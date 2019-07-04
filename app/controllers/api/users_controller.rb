class Api::UsersController < ApplicationController
    # Sign up
    def create
        @user = User.new(user_params)

        if @user.save
            login(@user)
            render 'api/users/show' 
            # Render the feed page
        else
            render json: @user.errors.full_messages, status: 422
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password);
    end
end
