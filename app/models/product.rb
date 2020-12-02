class Product < ApplicationRecord
has_many :join_order_products
has_many :select_products
has_many :order, through: :join_order_products

validates :title, presence: true
validates :description, presence: true
validates :price, presence: true
validates :image_url, presence: true

end
