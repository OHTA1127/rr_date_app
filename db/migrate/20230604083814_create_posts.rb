class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :location
      t.references :user, null: false, foreign_key: true
      t.text :description
      t.string :post_image
      t.float :latitude
      t.float :longitude
      t.string :station
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
