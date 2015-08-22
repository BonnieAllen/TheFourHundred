class PostsController < ApplicationController
  def index
  	@post = Post.all
  end

   def new
   	@post = Post.new
   end

   def show
   end

  def create  
    @post = Post.create(post_params)
    redirect_to posts_path
    end

  private

  def post_params  
    params.require(:post).permit(:image, :supertitle)
    end    
end