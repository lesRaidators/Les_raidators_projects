Rails.application.routes.draw do

  get 'privatevisitors/show'
  root 'home_page#show'
  devise_for :users
  resources :adresses
  resources :selected_products
  resources :products
  resources :orders
  resources :carts
  resources :homes
  resources :addresses
  resources :equipments
  resources :charges
  resources :partnership
  resources :home_page
  resources :team
  
end
