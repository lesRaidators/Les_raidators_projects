class AddressesController < ApplicationController
  before_action :get_user

  def index
    @addresses = Address.all

  end 

  def show
    @address = Address.find(params[:id])
  end

  def new
    @address = @user.addresses.build

  end

  def create
    @address = @user.addresses.build(post_params) 
  
    if @address.save
      redirect_to cart_path(Cart.find_or_create_by(user_id: current_user.id)), notice: "Address created"
    else
      puts "something goes wrong"
          puts @address.errors.messages
    end 
         
  end

  def edit
    @address = Address.find(params[:id])
  end

  def update
    @address = Address.find(params[:id])
    @address.update(post_params)
    redirect_to products_path
  end

  def destroy
    @address = Address.find(params[:id])
    @address.destroy
    redirect_to products_path
  end

  private 

  def post_params
  params.require(:address).permit(:first_name, :last_name, :street_number, :street, :zip_code, :city, :country, :phone_number, :user_id)
  end

  def get_user
    @user = User.find(params[:user_id])
  end

end
