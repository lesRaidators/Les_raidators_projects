class OrdersController < ApplicationController
  def create
    @order = Order.new(order_params)
    @current_cart.join_order_product.each do |item|
      @order.join_order_product << item
      item.cart_id = nil
    end
    @order.save
    Cart.destroy(session[:cart_id])
    session[cart_id] = nil 
    redirect_to root_path
  end
 
  def show
    @order = Order.find(params[:id])
  end

  def index
    @orders = Order.all
  end
  
  private
    def order_params
      params.require(:order).permit(:name, :email, :address, :pay_method)
    end
end
