class SelectedProductsController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:create]

  def create
    product = Product.find(params[:product_id])
    @selected_product = @cart.add_product(product)

    if selected_product.save
      redirect_to @selected_product.cart
    else
      render :new 
    end
  end


end
