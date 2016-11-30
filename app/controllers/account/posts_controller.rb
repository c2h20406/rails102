class Account::PostsController < ApplicationController
	before_action :authenticate_user!
	def index
		@posts = current_user.posts
	end

	def destroy
		@post.destroy
		flash[:alert] = "Post deleted"
		redirect_to group_path(@group)
	end
end
