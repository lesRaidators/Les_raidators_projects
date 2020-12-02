Rails.application.routes.draw do
  get 'order/show'
  get 'order/destroy'
  devise_for :users
  resources :adresses
  resources :selected_products
  resources :products
end
