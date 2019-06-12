Rails.application.routes.draw do
  devise_for :users
  root to: 'boats#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :boats, only: [:show, :new, :create, :index, :destroy] do
    resources :bookings, only: [:show, :new, :create]
  end
end
