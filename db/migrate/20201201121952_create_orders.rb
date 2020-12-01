class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :stripe_customer_id
      t.status :status
      
      t.timestamps
    end
  end
end