Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#root'

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show] do
      resources :follows, only: [:create, :show, :index, :destroy]
    end
    # resources :user_profile, only: [:update, :destroy]
    resources :sessions, only: [:create, :destroy]
    resources :stories, only: [:create, :show, :index, :update, :destroy] do
      patch '/claps', to: 'stories#update_likes'
      resources :responses, only: [:index, :update, :create] do
        patch '/claps', to: 'responses#update_claps'
      end
    end
    resources :responses, only: [:destroy]
  end
end