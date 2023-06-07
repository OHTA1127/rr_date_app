class RenameUserimageColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :user_image, :user_image_id
  end
end
