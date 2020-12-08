class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end
  
  def show
    @order = Order.find(params[:id])
  end
  
 
def create

      @adderess= Address.find_or_create_by(user_id: current_user)
      @total = current_user.cart.total_stripe.to_i

      customer = Stripe::Customer.create({
        email: params[:stripeEmail],
        source: params[:stripeToken],
      })

      charge = Stripe::Charge.create({
        customer: customer.id,
        amount: @total,
        description: "Payment of #{current_user.first_name} #{current_user.last_name}",
        currency: 'eur',
      })
      
        @cart = current_user.cart
        @order = Order.new(user_id: current_user.id, total_price: @cart.total)

        if @order.save
          @selected_products = @cart.selected_products
          @selected_products.each do |item|
            @join_order_product = JoinOrderProduct.create(order_id: @order.id, product_id: item.product_id, quantity: 1)
            @join_order_product.save
            item.destroy
        end
          flash.notice = "Votre commande a bien été effectuée"
          redirect_to products_path
        else
          flash.alert = "Une erreur est survenue #{@order.errors.messages}"
          redirect_to cart_path(id: current_user.id)
        end
   
  
    rescue Stripe::CardError => e
      flash[:error] = e.message
      puts e.message
      redirect_to root_path
  end
 
  def show
    @order = Order.find(params[:id])
  end


  
  private
    def order_params
      params.require(:order).permit(:name, :email, :address, :pay_method)
    end
end
