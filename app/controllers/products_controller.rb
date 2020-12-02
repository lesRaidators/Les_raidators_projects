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
    @product = Product.find(params[:id])
    @product.update(post_params)
    redirect_to root_path
  end

  def edit
    @product = Products.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to root_path
  end
  
private 

def post_params
  params.require.(:products).permite(:title, :description, :price, :image_url)
end
end 