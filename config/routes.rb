Rails.application.routes.draw do

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
  resources :users
  resources :addresses
  resources :charges
  resources :posts

  root 'static_pages#home_page'
  
  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
    get 'success', to: 'checkout#success', as: 'checkout_success'
  end
  
end
