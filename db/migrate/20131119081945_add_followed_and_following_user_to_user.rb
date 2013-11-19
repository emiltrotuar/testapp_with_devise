class AddFollowedAndFollowingUserToUser < ActiveRecord::Migration
  def change
    add_column :users, :following_user_id, :string
    add_column :users, :followed_user_id, :string
  end
end
