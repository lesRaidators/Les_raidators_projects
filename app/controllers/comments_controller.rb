class CommentsController < ApplicationController
  def index
  end
  def create 
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params.merge(user_id: current_user.id))
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id] ) 
    @comment.update(comment_params)
    redirect_to posts_path
  end

  def edit
    @comment = Comment.find(params[:id])
  end
  
  private 
  def comment_params
    params.require(:comment).permit(:content, :user_id)
  end
end
