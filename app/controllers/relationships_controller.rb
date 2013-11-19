class RelationshipsController < ApplicationController
	before_filter :authenticate_user!

  def follow
  	@user = User.find(post_params[:id])
  	current_user.following_users.add @user
  	if @user
  		format.html { redirect_to action: 'index', controller: :home }
  		format.json { render action: 'show', status: :created, location: @user }
  	else
  		format.html { render action: 'new' }
  		format.json { render json: @user.errors, status: :unprocessable_entity }
  	end

  end

  def unfollow

  end
end
