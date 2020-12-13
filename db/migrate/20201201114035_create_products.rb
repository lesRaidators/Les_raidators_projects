class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.string :category, default: 0
      t.integer :donation_part, default: 1
      t.timestamps
    end
  end
end
