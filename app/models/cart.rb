class Cart < ApplicationRecord
  belongs_to :user
  has_many :selected_products, dependent: :destroy
  
  def add_product(product)
   item = selected_products.find_by(product_id: product)
    if item
      item.quantity += 1
    else
      item = selected_products.new(product: product)
    end
    item
  end


def total 
 selected_products.to_a.sum(&:total)
end


def total_stripe
  selected_products = self.selected_products
  total = 0
  selected_products.each do |item|
    total += item.product.price / 100
  end
  return total
end


end
