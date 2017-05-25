Rails.application.routes.draw do
  root to: 'users#index'

  resources :users

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'

  # libraries routes and paths
  get '/libraries', to: 'libraries#index'
  get '/libraries/new', to: 'libraries#new', as: 'new_library'
  post '/libraries', to: 'libraries#create'
end
