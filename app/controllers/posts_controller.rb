class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :new]


  def index
    @posts = Post.all 
  end

  def show
    @post = Post.find(params[:id])
    @user = current_user
  end

  def create 
    @post = Post.create(post_params.merge(user_id: current_user.id))
    if @post.save
      redirect_to posts_path
   else
      render :new
   end 
  end

  def new 
    if current_user.admin?
     @post = Post.new 
    else
      redirect_to posts_path
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  def edit
    if current_user.admin?
      @post = Post.find(params[:id])
    else
      redirect_to posts_path
     end
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to posts_path 
  end

  private 
  def post_params
    params.require(:post).permit(:title, :content, :avatar, :user_id)
  end

end
