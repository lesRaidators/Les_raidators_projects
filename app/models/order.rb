class Order < ApplicationRecord
  has_many :products
  has_many :join_order_products
  belongs_to :users
  has_many :products, through: :join_order_products

end
