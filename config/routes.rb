Rails.application.routes.draw do

  get '/partnership', to: "static_pages#partnership"
  get '/home_page', to: "static_pages#home_page"
  get '/team', to: "static_pages#team"
<<<<<<< HEAD
  get 'privatevisitors/show'
  
=======
  get '/privatevisitors', to: "static_pages#privatevisitors"
  get '/equipments', to:"static_pages#equipments"

>>>>>>> development
  devise_for :users
  resources :adresses
  resources :selected_products
  resources :products
  resources :orders
  resources :carts
  resources :homes
  resources :addresses
  resources :charges

  root 'static_pages#home_page'
  
  
end
