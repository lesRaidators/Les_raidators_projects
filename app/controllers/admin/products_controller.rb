class Admin::ProductsController < Admin::BaseController
  before_action :get_product, only: [:show, :edit, :destroy, :update]

  def index
    @products = Product.all
  end

  def show
  end

  def edit
  end

  def update
    @product.update(product_params)

    if @product.save
      flash[:info] = "Le produit a bien été modifié"
      redirect_to admin_product_path(@product)
    else
      flash[:warning] = "Une erreur est survenue : #{@product.errors.messages}"
      redirect_to edit_admin_product_path(@product)
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)

    if @product.save
      flash[:info] = "Le produit a bien été ajouté"
      redirect_to admin_product_path(@product)
    else
      flash[:warning] = "Une erreur est survenue : #{@product.errors.messages}"
      redirect_to new_admin_product_path
    end
  end

  def destroy
    @product.destroy
    redirect_to admin_products_path
  end

  private

  def get_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title, :description, :price, :avatar, :category, :donation_part)
  end
end
