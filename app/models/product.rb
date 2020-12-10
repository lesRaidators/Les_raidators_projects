class Product < ApplicationRecord
has_many :join_order_products, dependent: :destroy 
has_many :selected_products, dependent: :destroy
has_many :orders, through: :join_order_products

validates :title, presence: true
validates :description, presence: true
validates :price, presence: true
validates :image_url, presence: true

enum category: [:donation, :merchandising]

end
