Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users', sessions: 'sessions' }
  get 'users/new'
  get 'users/create'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'

  resources :photograms
  resources :users, only: [:show]

  root "photograms#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
