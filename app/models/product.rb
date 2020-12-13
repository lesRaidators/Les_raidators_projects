class Product < ApplicationRecord
has_many :join_order_products, dependent: :destroy 
has_many :selected_products, dependent: :destroy
has_many :orders, through: :join_order_products
has_one_attached :avatar

validates :title, presence: true
validates :description, presence: true
validates :price, presence: true


enum category: {donation: "Don", merchandising: "Produit"}

end
