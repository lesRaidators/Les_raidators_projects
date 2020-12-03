class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.create(post_params)
    redirect_to root_path
  end

  def new
    @product = Product.new
  end

  def update
    binding.pry
    @product = Product.find(params[:id])
    @product.update(post_params)
    redirect_to products_path
  
  end

  def edit
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end
  
private 

def post_params
  params.require(:product).permit(:title, :description, :price, :image_url)
end
end 