class RelationshipsController < ApplicationController
	before_filter :authenticate_user!

  def follow
  	user = User.find(params[:id])
    fuser = current_user.followed_users
    unless fuser.find(user.id)
  	 fuser << user
    end
    redirect_to :back
  end

  def unfollow
    user = User.find(params[:id])
    fuser = current_user.followed_users
    if fuser.find(user.id)
      fuser.delete(user)
    end
    redirect_to :back
  end
end
