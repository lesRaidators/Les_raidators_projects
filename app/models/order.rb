class Order < ApplicationRecord
  has_many :products
  has_many :join_order_products
  belongs_to :user
  has_many :products, through: :join_order_products

  enum type: [:refuse, :waiting, :confirm]
  
  def goal
    donation_goal = 6500
  end

  def donation_amount
    Order.all.each do |order|
      order.join_order_product.each do |item|
        total = item.product.quantity  * item.product.price * item.product.donation_part
        progress_donation = total/donation_goal * 100
      end
    end
  end

  def self.current_goal 
    total_donation_amount = 0 
    Order.all.each do |order|
      total_donation_amount =+ order_donation_amount
    end
    current_objective = total_donation_amount/donation_goal * 100
    scope :confirmed, -> {where(type (confirmed)) }
    return current_objective
  end
end