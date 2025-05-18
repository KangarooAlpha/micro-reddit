class FixUserIdAndPostIdCasing < ActiveRecord::Migration[8.0]
  def change
    remove_index :posts, name: "index_posts_on_User_id"
    remove_index :comments, name: "index_comments_on_Post_id"

    # Rename the columns to proper snake_case
    rename_column :posts, :User_id, :user_id
    rename_column :comments, :Post_id, :post_id

    # Re-add indexes with the correct casing
    add_index :posts, :user_id
    add_index :comments, :post_id
  end
end
