class CreateJoinOrderProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :join_order_products do |t|
      
      t.timestamps
    end
  end
end
