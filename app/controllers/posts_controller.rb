class PostsController < ApplicationController
  def index
    @posts = Post.all 
  end

  def show
    @post = Post.find(params[:id])
  end

  def create 
    @post = Post.create(post_params.merge(user_id: current_user.id))
    redirect_to posts_path
  end

  def new 
    @post = Post.new 
  end

  def destroy
    @post = Post.find(params[:id])
    @post = Post.destroy
    redirect_to posts_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to posts_path 
  end

  private 
  def post_params
    params.require(:post).permit(:title, :content, :image_url, :user_id)
  end

end
