class RelationshipsController < ApplicationController

  def follow
  	user = User.find(params[:id])
    followed = current_user.followed_users
    following = user.following_users
    unless followed.find_by_id(user.id)
     followed << user
     following << current_user
    end
    redirect_to :back
  end

  def unfollow
    user = User.find(params[:id])
    followed = current_user.followed_users
    following = user.following_users
    if followed.find_by_id(user.id)
      followed.delete(user)
      following.delete(current_user)
    end
    redirect_to :back
  end
end
