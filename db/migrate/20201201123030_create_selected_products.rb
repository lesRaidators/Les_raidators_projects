class CreateSelectedProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :selected_products do |t|
      t.integer :quantity

      t.timestamps
    end
  end
end
