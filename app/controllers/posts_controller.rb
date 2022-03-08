class PostsController < ApplicationController

  #Posts
  def index
    @posts = Post.all.reverse
  end

  def show
    @post = Post.find(params[:id])
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

  def new
    @post = Post.new(title:"",content:"")
  end

  def create
    new_post  =  params.require(:post).permit(:title ,:content)
    Post.create(new_post)
    redirect_to posts_path
  end

  def destroy
    @post = Post.find(params[:id])
    Analytics.destroy(@post.id)
    @post.destroy
  end
end
