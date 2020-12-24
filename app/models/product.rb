class Product < ApplicationRecord
  has_many :join_order_products, dependent: :destroy
  has_many :selected_products, dependent: :destroy
  has_many :orders, through: :join_order_products
  has_one_attached :avatar

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
  validates :donation_part, presence: true, numericality: { only_integer: true }
  validates :avatar, presence: true


  enum category: { :donation => 0, :merchandising => 1 }

  scope :donation, -> {where(category: "donation") }
  scope :merchandising, -> {where(category: "merchandising") }
end
