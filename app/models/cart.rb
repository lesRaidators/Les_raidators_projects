class Cart < ApplicationRecord
  belongs_to :user
  has_many :selected_products
  
  def add_product(product)
    product = selected_products.find_by(product_id: product)
    if product
      product.quantity += 1
    else
      product = selected_products.new(product: product)
    end
    product
  end

end
