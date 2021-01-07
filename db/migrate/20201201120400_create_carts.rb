class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table      :carts do |t|
      t.references    :user, null: false, foreign_key: true
      t.integer       :stripe_price
      t.timestamps
    end
  end
end
