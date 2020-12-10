class PictureProductsController < ApplicationController
  
  def create
    @product = Product.find(params[:product_id])
    @product.picture_product.attach(params[:picture_product])
    redirect_to(products_path(@product))
  end

end
