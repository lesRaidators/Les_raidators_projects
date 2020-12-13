class ProductsController < ApplicationController
  
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
  
    @product = Product.create(post_params)
      if @product.save
        redirect_to products_path
     else
        render :new, notice: "Sorry, but you are only allowed to view your own profile page."
     end
  end 

  def new
    if current_user.admin?
      @product = Product.new
    else
      redirect_to products_path
    end
  end

  def update
    @product = Product.find(params[:id])
    @product.update(post_params)
    if @product.save
      redirect_to products_path
   else
      render :new, notice: "Sorry, but you are only allowed to view your own profile page."
   end
  end

  def edit
    if current_user.admin?
    @product = Product.find(params[:id])
  else
    redirect_to products_path
  end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end
  
private 

  def post_params
  params.require(:product).permit(:title, :description, :price, :avatar, :category)
  end
end 