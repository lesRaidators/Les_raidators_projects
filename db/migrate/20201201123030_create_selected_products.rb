class CreateSelectedProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :selected_products do |t|
      t.integer :quantity
      t.references :cart, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.timestamps
    end
  end
end
