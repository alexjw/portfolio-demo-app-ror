Rails.application.routes.draw do
  get 'order_details/:id/done', to: 'order_details#done', as: 'order_details_done'
  resources :clients
  resources :meals
  resources :ingredients
  resources :orders, only: %i[index new create edit update show]
  get '/orders/:id/close', to: 'orders#close', as: 'close_order'
  resources :kitchen, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
