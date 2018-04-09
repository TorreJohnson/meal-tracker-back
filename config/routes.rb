Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post "/signup", to: "users#create"
      post "/login", to: "auth#create"
      get "/get_user", to: "auth#show"
      resources :users, except: [:new, :edit, :create]
      resources :messages, except: [:new, :edit]
      resources :food_items, except: [:new, :edit, :index]
      resources :nutritionists, except: [:new, :edit]
    end
  end
end
