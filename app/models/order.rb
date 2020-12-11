class Order < ApplicationRecord
  has_many :products
  has_many :join_order_products, dependent: :destroy
  belongs_to :user
  
  has_many :products, through: :join_order_products
  belongs_to :user

  enum type: [:refuse, :waiting, :confirm]

  after_create :order_save
  after_create :order_send

def order_save
    OrderMailer.new_order_email(@order).deliver_now
end

def order_send
  OrderMailer.order_email(self).deliver_now
end 


end