Rails.application.routes.draw do

  get '/partnership', to: "static_pages#partnership"
  get '/home_page', to: "static_pages#home_page"
  get '/team', to: "static_pages#team"
  get '/privatevisitors', to: "static_pages#privatevisitors"
  get '/equipments', to:"static_pages#equipments"

  devise_for :users
  resources :addresses
  resources :selected_products
  resources :products
  resources :orders
  resources :carts
  resources :users
  resources :addresses
  resources :charges
  resources :posts do
    resources :comments
  end 
  root 'static_pages#home_page'
  
end
