Rails.application.routes.draw do
<<<<<<< .merge_file_M7eZkN

  get '/partnership', to: "static_pages#partnership"
  get '/home_page', to: "static_pages#home_page"
  get '/team', to: "static_pages#team"
  get '/privatevisitors', to: "static_pages#privatevisitors"
  get '/equipments', to:"static_pages#equipments"

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
  
  
=======
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
>>>>>>> .merge_file_sTV4vO
end
