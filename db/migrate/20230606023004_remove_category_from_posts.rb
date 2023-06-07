class RemoveCategoryFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_reference :posts, :category, null: false, foreign_key: true
  end
end
