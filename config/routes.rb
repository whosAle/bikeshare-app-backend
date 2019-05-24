Rails.application.routes.draw do

  resources :users, only: [:show, :new, :create]
  resources :bike_networks, only: [:show, :new, :create]
  resources :trips, except: [:index, :edit]
end
