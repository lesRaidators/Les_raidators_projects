class CartsController < ApplicationController
before_action :set_cart, only: [:show]

  def show
    @user = current_user
    @total = current_user.cart.total_stripe.to_i
    @cart = Cart.find(params[:id])
    if current_user.id != Cart.find(params[:id]).user_id
      redirect_to root_path
    end
  end

  def destroy
    @carts = Cart.find(params[:id]) 
    @carts.destroy
  end
 
  private
  def set_cart
    @cart = Cart.find(params[:id])
  end
end

