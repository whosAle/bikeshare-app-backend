Rails.application.routes.draw do

  resources :users, only: [:show, :new, :create]
  post '/login', to: 'users#login', as: 'login'

  resources :bike_networks, only: [:show, :new, :create]
  resources :trips, except: [:index, :edit]
end
