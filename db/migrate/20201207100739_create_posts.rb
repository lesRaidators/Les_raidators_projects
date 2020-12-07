class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :image_url
      t.references :user, null: false, foreign_key: true
      t.column :status, :integer, default: 0
      t.timestamps
    end
  end
end
