Rails.application.routes.draw do

  get '/partnership', to: "static_pages#partnership"
  get '/home_page', to: "static_pages#home_page"
  get '/team', to: "static_pages#team"
  get 'privatevisitors/show'
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

  root 'static_pages#home_page'

  
  
end
