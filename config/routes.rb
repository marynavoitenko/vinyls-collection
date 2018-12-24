# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    resources :artists, only: [:index, :show]
    resources :crates, only: [:index, :show]
    resources :labels, only: [:index, :show, :create]
    resources :tracks, only: [:index, :show]
    resources :genres, only: [:index, :show]
    resources :vinyls, only: [:index, :show, :create]
  end
end
