class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def show
	end

	def new
		@post = current_user.posts.new
	end
end
