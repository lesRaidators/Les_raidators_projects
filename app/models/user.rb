class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_many :orders, dependent: :destroy
  has_many :addresses, dependent: :destroy
  has_one :cart, dependent: :destroy
  has_many :products, through: :cart


  after_create :welcome_send

  def welcome_send
    puts " ==== WELCOME SEND METHOD STARTING === "
    UserMailer.welcome_email(self).deliver_now
  end

end
