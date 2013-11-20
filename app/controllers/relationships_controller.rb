class RelationshipsController < ApplicationController

  def follow
  	user = User.find(params[:id])
<<<<<<< HEAD
    followed = current_user.followed_users
    following = user.following_users
    unless followed.find_by_id(user.id)
     followed << user
     following << current_user
=======
    fuser = current_user.followed_users
    unless fuser.find(user.id)
  	 fuser << user
>>>>>>> 2f5e5d1f05fdd140a824eba778098d070b60f951
    end
    redirect_to :back
  end

  def unfollow
    user = User.find(params[:id])
<<<<<<< HEAD
    followed = current_user.followed_users
    following = user.following_users
    if followed.find_by_id(user.id)
      followed.delete(user)
      following.delete(current_user)
=======
    fuser = current_user.followed_users
    if fuser.find(user.id)
      fuser.delete(user)
>>>>>>> 2f5e5d1f05fdd140a824eba778098d070b60f951
    end
    redirect_to :back
  end
end
