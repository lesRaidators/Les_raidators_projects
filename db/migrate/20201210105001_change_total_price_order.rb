class ChangeTotalPriceOrder < ActiveRecord::Migration[5.2]
  def change
    change_column :orders, :total_price, :integer
    change_column :carts, :stripe_price, :integer
  end
end
