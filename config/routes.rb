Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post "/signup", to: "users#create"
      post "/login", to: "auth#create"
      get "/get_user", to: "auth#show"
      get "/get_users/:id", to: "nutritionists#users"
      resources :users, except: [:new, :edit, :create]
      resources :messages, only: [:create, :update, :destroy]
      resources :food_items, only: [:create, :update, :destroy]
      resources :nutritionists, except: [:new, :edit]
    end
  end
end
