class Api::StoriesController < ApplicationController
    def create

    end

    def update

    end

    def destroy
    end

    private
    def story_params
        params.require(:story).permit(:title, :body)
    end
end
