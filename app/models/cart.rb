class Cart < ApplicationRecord
  belongs_to :user
  has_many :selected_products
  
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
 selected_products = self.selected_products
  total = 0
  selected_products.each do |t|
    total += t.product.price
  end
  return total
end


def total_stripe
  selected_products = self.selected_products
  total = 0
  selected_products.each do |item|
    total += item.product.price
  end
  total = total *100
  return total
end


end
