Rails.application.routes.draw do

  get 'labels/index'
  get 'labels/show'
  resources :artists, only: [:index, :show]
  resources :crates, only: [:index, :show]
  resources :labels, only: [:index, :show]
  resources :tracks, only: [:index, :show]
  resources :vinyls, only: [:index, :show, :create]

end
