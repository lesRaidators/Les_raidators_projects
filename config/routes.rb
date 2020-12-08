Rails.application.routes.draw do

  get '/partenariat', to: "static_pages#partnership"
  get '/acceuil', to: "static_pages#home_page"
  get '/equipe', to: "static_pages#team"
  get '/dons', to: "static_pages#privatevisitors"
  get '/equipements', to:"static_pages#equipments"

  devise_for :users
  resources :addresses
  resources :selected_products
  resources :products, path: 'boutique'
  resources :orders, path: 'commande'
  resources :carts, path: 'panier'
  resources :users, path: 'profil'
  resources :addresses
  resources :charges, path: 'paiement'
  resources :posts do
    resources :comments
  end 
  root 'static_pages#home_page'
  
end
