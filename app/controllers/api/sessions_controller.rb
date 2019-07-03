class Api::SessionsController < ApplicationController
    # Sign in / Sign out
    def create
        @user = User.find_by_credentials(
            params[:user][:username],
            params[:user][:password]
        )
        if @user
            login(@user)
            render 'api/users/show'
            # Render feed page
        else
            render json: ['Invalid credentials'], status: 401
        end
    end

    def destroy
        @user = current_user
        if @user
            logout
            render 'api/users/show'
            # Render feed page
        else
            render status: 404
        end
    end
end
