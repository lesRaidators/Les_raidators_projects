class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :stripe_customer_id
<<<<<<< HEAD
  
=======
      t.references :user, null: false, foreign_key: true
>>>>>>> development
      t.timestamps
    end
  end
end
