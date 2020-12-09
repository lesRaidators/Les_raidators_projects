class Order < ApplicationRecord
  has_many :products
  has_many :join_order_products
  belongs_to :user
  
  has_many :products, through: :join_order_products

  enum type: [:refuse, :waiting, :confirm]


end
