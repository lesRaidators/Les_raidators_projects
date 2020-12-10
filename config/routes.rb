Rails.application.routes.draw do

  get '/partenariat', to: "static_pages#partnership"
  get '/accueil', to: "static_pages#home_page"
  get '/equipe', to: "static_pages#team"
  get '/dons', to: "static_pages#privatevisitors"
  get '/equipements', to: "static_pages#equipments"
  get '/contact', to: "static_pages#contact"
  get '/car', to:"static_pages#car"
  
  devise_for :users 
  resources :addresses
  resources :selected_products

  resources :products do
    resources :product_pictures, only: [:create]
  end

  resources :orders, path: 'commande'
  resources :carts, path: 'panier'
  resources :addresses
  resources :charges, path: 'paiement'
  
  resources :users, path: 'profil'do
  resources :avatars, only: [:create]
  end

  resources :posts do
    resources :comments
  end 
  root 'static_pages#home_page'
  
  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
    get 'success', to: 'checkout#success', as: 'checkout_success'
  end
  
end
