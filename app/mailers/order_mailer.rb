class OrderMailer < ApplicationMailer
  default from: 'raidator@yopmail.com'

  def new_order_email (order)
    @order = order

    mail(to: 'raidator@yopmail.com', subject: "Vous avez une nouvelle commande!")
  end 

  def order_email (order)
    @order = order
    @cart = @order.user.cart
    @user = User.find(order.user_id)
    @url  = 'https://raidators-project.herokuapp.com/'
    mail(to: @user.email, subject: 'Merci pour votre don !')
  end


end