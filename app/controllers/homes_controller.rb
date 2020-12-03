class HomesController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = current_user
    @orders = current_user.orders
  end
end
