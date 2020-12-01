class CreateAdresses < ActiveRecord::Migration[5.2]
  def change
    create_table :adresses do |t|
      t.string :first_name
      t.string :last_name
      t.integer :street_number
      t.string :street
      t.string :zip_code
      t.string :country
      t.string :phone_number
      t.string :company_name
      t.timestamps
    end
  end
end