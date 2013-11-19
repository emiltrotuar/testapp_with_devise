class HomeController < ApplicationController
	before_filter :authenticate_user!
	
	def index
		@posts = current_user.posts
		@followed_users = current_user.followed_users.load
	end

	def followed_users
		@followed_users = current_user.followed_users
	end

	def following_users
		@following_users = current_user.following_users
	end
end
