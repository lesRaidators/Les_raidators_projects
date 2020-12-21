class Address < ApplicationRecord
  belongs_to :user

  validates :first_name,
   presence: true

  validates :last_name,
   presence: true

  validates :street_number,
   presence: true

  validates :street,
   presence: true

  validates :zip_code,
   presence: true

  validates :city,
   presence: true

  validates :country,
   presence: true

  validates :phone_number,
   presence: true
   
  
  enum type: [:billing, :shipping]

end
