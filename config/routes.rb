Rails.application.routes.draw do
  root to: 'cars#index'
  resources :cars do
    resources :rentals, only: [:new, :create, :edit, :update, :destroy] do
      resources :reviews, only: [:new, :create]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
