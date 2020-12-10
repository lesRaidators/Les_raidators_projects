class SelectedProductsController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:create]

  def create
    product = Product.find(params[:product_id])
    @selected_product = @cart.add_product(product)

    if @selected_product.save
      redirect_to @selected_product.cart
    else
      render :new 
    end
  end

def update
  @selected_product = SelectedProduct.find(params[:id])
  @selected_product.update(quantity: @selected_product.quantity)
  @cart = Cart.find(current_user.id)
  respond_to do |format|
    format.html { redirect_to root_path }
    format.js { }
  end
end 




  def destroy
    @selected_product = SelectedProduct.find(params[:id])
    @selected_product.destroy
    redirect_to @selected_product.cart
  end

private
  def lineitem_params
    params.require(:selected_product).permit(:cart_id, :product_id, :quantity)
  end


end
