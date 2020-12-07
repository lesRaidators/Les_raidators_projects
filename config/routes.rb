Rails.application.routes.draw do

  devise_for :users
  resources :adresses
  resources :selected_products
  resources :products
  resources :orders
  resources :carts
  resources :users
  resources :addresses
end
