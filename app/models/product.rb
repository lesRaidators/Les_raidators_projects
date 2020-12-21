class Product < ApplicationRecord
  has_many :join_order_products, dependent: :destroy
  has_many :selected_products, dependent: :destroy
  has_many :orders, through: :join_order_products
  has_one_attached :avatar

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :avatar, presence: true


  enum category: { :donation => 0, :merchandising => 1 }

end
