class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = current_user
    @address= Address.find(params[:id])
    @orders = Order.where(user_id: @user.id).includes(:join_order_products, :products)
  end
end
