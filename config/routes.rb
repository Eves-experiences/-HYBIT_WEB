Rails.application.routes.draw do
  # Sidekiq Web UI, only for admins.
  require "sidekiq/web"
  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  devise_for :users
  root to: "pages#home"
  get "/dashboard", to: "pages#dashboard"
  get "/leaderboard", to: "pages#leaderboard"
  get "/users/:id", to: "pages#user"

  # post "/habits/:id/counter", to: "habits#counter", as: :counter

  resources :habits do
    patch :update, on: :member
    member do
      put :check_as_done
    end
  end

  resources :friendships

  # get 'users/:id/request', to: "friendships#new"
  # post 'users/:id', to: 'friendships#create', as: 'request_friendship'
  # patch 'friendships/:id', to: "friendships#accept"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
