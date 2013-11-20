class CreateFollowersJoinTable < ActiveRecord::Migration
  def change
    create_join_table :users, :following_users do |t|
      # t.index [:user_id, :following_user_id]
      # t.index [:following_user_id, :user_id]
    end
  end
end
