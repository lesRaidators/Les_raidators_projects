class Admin::OrdersController < Admin::BaseController
  before_action :get_order, only: [:show, :destroy]

  def index
    @orders = Order.all.order('created_at DESC')
  end

  def show
  end

  def new
    @order = Order.new
    @admin = User.find_by(admin: true)
  end

  def create
    @user = User.find_by(email: order_params[:user_email])
    @order = Order.create(user: @user, stripe_customer_id: "000000", total_price: 0)
    order_params[:products_ids].each { |product_id| @order.products << Product.find(product_id) } if order_params[:products_ids]
    @order.update(total_price: @order.products.sum(&:price))

    if @order.save
      flash[:info] = "Commande créée !"
      redirect_to admin_order_path(@order)
    else
      flash[:warning] = "Une erreur est survenue #{@order.errors.messages}"
      redirect_to new_admin_order_path
    end
  end

  def destroy
    @order.destroy
    redirect_to admin_orders_path
    flash[:warning] = "La commande a été supprimée"
  end

  private

  def get_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:user_email, products_ids: [])
  end

end
