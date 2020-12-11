class Order < ApplicationRecord
  has_many :join_order_products, dependent: :destroy
  has_many :products, through: :join_order_products
  belongs_to :user

  enum type: [:refuse, :waiting, :confirm]
end