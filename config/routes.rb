  devise_for :users
  root to: 'cars#index'
  resources :cars do
    resources :rentals, only: [:new, :create, :edit, :update, :destroy] do
      resources :reviews, only: [:new, :create]
    end
  end
end
