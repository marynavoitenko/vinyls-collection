# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    resources :artists, only: [:index, :show, :create, :update]
    resources :crates, only: [:index, :show, :create, :update]
    resources :labels, only: [:index, :show, :create, :update]
    resources :tracks, only: [:index, :show, :create, :update]
    resources :genres, only: [:index, :show, :create, :update]
    resources :vinyls, only: [:index, :show, :create, :update]
  end
end
