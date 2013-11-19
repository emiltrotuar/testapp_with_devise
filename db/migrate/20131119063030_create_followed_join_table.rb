class CreateFollowedJoinTable < ActiveRecord::Migration
  def change
    create_join_table :users, :followed_users do |t|
      # t.index [:user_id, :followed_user_id]
      # t.index [:followed_user_id, :user_id]
    end
  end
end
