Rails.application.routes.draw do
  # resources :reviews, only: %i[show edit update destroy]

  namespace :admin do
    resources :restaurants, only: :index
  end

  resources :restaurants do
    resources :reviews, only: %i[new create]

    collection do
      get :top
    end

    member do
      get :chef
    end
  end

  root to: "restaurants#index"
end
