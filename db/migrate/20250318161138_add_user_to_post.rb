class AddUserToPost < ActiveRecord::Migration[8.0]
  def change
    add_reference :posts, :User, null: false, foreign_key: true
  end
end
