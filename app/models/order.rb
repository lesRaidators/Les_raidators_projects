class Order < ApplicationRecord
  has_many :join_order_products, dependent: :destroy
  has_many :products, through: :join_order_products
  belongs_to :user

  enum type: [:refuse, :waiting, :confirm]

    DONATION_GOAL = 650000

  def donation_amount
    total = 0 
      self.join_order_products.each do |item|
        total += item.quantity * item.product.price * item.product.donation_part/100
      end
      return total
  end

  def self.current_goal 
    total_donation_amount = 0 
    Order.all.each do |order|
      puts order.donation_amount
      puts total_donation_amount
      total_donation_amount += order.donation_amount
    end
    current_objective = (total_donation_amount.to_f/DONATION_GOAL * 100).round(2)
  end
end