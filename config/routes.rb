Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users', sessions: 'sessions' }
  
  resources :photo_grams
  resources :photo_grams do
    resources :likes, only: [:create, :destroy]
  end
  root to:"photo_grams#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
