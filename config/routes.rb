Rails.application.routes.draw do
  get 'reviews/new'

  get 'rentals/new'

  get 'rentals/edit'

  get 'cars/new'

  get 'cars/edit'

  get 'cars/show'

  get 'cars/index'

  devise_for :users
  root to: 'cars#index'
  resources :cars do
    resources :rentals, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :rentals, only: [] do
    resources :reviews, only: [:new, :create]
  end
end
