class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.string :image_url
      t.integer :category, default: 0
      t.timestamps
    end
  end
end
