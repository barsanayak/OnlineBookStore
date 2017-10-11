Rails.application.routes.draw do
  get 'admin', to: 'admin#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users
  resources :orders
  resources :orders
  resources :line_items
  resources :carts
  resources :products

  get 'shopper/index'
  root "shopper#index", as: 'shopper'

end
