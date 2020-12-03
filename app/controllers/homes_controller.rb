class HomesController < ApplicationController
  def index
    @user = User.all
    
  end

  def show
    @user = find(params[:id])

  end
end
