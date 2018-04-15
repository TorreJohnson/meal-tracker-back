Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post "/signup", to: "users#create"
      post "/login", to: "auth#create"
      get "/get_user", to: "auth#show"
      get "/get_users/:id", to: "nutritionists#users"
      resources :users, only: [:create, :show, :update, :destroy]
      resources :messages, only: [:create, :update]
      resources :food_items, only: [:create]
      resources :nutritionists, only: [:create, :show, :index, :update, :destroy]
    end
  end
end
