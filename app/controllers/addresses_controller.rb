require 'pry'
class AddressesController < ApplicationController
  before_action :authenticate_user!

  def show
    @address = Address.find(params[:id])
  end

  def new
    @address = Address.new

  end

  def create
    @address = Address.new(post_params.merge(user_id: current_user.id)) 
  
    if @address.save
      redirect_to products_path, notice: "Adresse créé avec succès"
    else
      puts "something goes wrong"
          puts @address.errors.messages
    end 
         
  end

  def edit
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


end
