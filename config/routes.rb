Rails.application.routes.draw do
  devise_for :users

  get 'my-received-bookings', to: 'pages#my_received_bookings'
  root to: 'boats#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :boats, only: [:show, :new, :create, :index, :destroy] do
    resources :bookings, only: [:create]
  end
end
