class ChangeFavoritesColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :favorites, :user_id
    remove_column :favorites, :post_image_id

    change_table :favorites do |t|
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true
    end
  end
end
