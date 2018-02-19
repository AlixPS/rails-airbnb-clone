Rails.application.routes.draw do
  devise_for :users
  root to: 'cars#index'
  resources :cars do
    resources :rentals, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :rentals, only: [] do
    resources :reviews, only: [:new, :create]
  end
end
