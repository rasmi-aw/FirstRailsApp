class PostsController < ApplicationController

  #Posts
  def index
    @posts = Post.all
  end

  def show

  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    new_post  =  params.require(:post).permit(:title ,:content)
    @post.update(new_post)
    redirect_to posts_path
  end
end
