Rails.application.routes.draw do
  resources :clients
  resources :meals
  resources :ingredients
  resources :orders, only: [:index, :new, :create, :edit, :update]
  get '/orders/:id/close', to: 'orders#show', as: 'close_order'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
