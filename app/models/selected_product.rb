class SelectedProduct < ApplicationRecord

  belongs_to :cart
  belongs_to :product

  def total
    total = quantity * product.price / 100
  end

end
