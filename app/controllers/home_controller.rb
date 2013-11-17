class HomeController < ApplicationController
	before_filter :authenticate_user!
	
	def index
		@posts = current_user.posts
		@followed_posts = current_user.followed_users.posts
	end

end
