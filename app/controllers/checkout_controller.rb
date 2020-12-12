class CheckoutController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @user = current_user
    @total = params[:total].to_d
    @session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [
        {
          name: 'Rails Stripe Checkout',
          amount: (@total*100).to_i,
          currency: 'eur',
          quantity: 1
        },
      ],
      success_url: checkout_success_url + '?session_id={CHECKOUT_SESSION_ID}',
      cancel_url: checkout_cancel_url
    )
    respond_to do |format|
      format.js 
    end
  end

  def success
    @session = Stripe::Checkout::Session.retrieve(params[:session_id])
    @payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent)
    @cart = current_user.cart
    @order = Order.new(user_id: current_user.id, total_price: @cart.total)
    if @order.save
      @selected_products = @cart.selected_products
      @selected_products.each do |item|
        @join_order_product = JoinOrderProduct.create(order_id: @order.id, product_id: item.product_id, quantity: item.quantity)
        @join_order_product.save
        item.destroy
      end
    end
  end
end
