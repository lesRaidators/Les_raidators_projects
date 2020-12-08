class CartsController < ApplicationController
before_action :set_cart, only: [:show]

  def show
   @address = Address.new
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

def post_params
params.require(:address).permit(:first_name, :last_name, :street_number, :street, :zip_code, :city, :country, :phone_number, :user_id)
end