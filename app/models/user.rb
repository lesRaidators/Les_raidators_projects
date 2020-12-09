class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_one_attached :avatar
         has_many :orders
         has_many :addresses
         has_one :cart
         has_many :products, through: :cart

  def avatar
    avatar.attach(params[:avatar])
  end
end
