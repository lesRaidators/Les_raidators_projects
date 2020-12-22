class Admin::PostsController < Admin::BaseController
  before_action :get_post, only: [:show, :edit, :destroy, :update]

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def show
  end

  def edit
  end

  def update
    @post.update(post_params)

    if @post.save
      flash[:info] = "Le produit a bien été modifié"
      redirect_to admin_post_path(@post)
    else
      flash[:warning] = "Une erreur est survenue : #{@post.errors.messages}"
      redirect_to edit_admin_post_path(@post)
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = User.find(user_params[:user_id])
    @post.save
    if @post.save
      flash[:info] = "Le produit a bien été ajouté"
      redirect_to admin_post_path(@post)
    else
      flash[:warning] = "Une erreur est survenue : #{@post.errors.messages}"
      redirect_to new_admin_post_path
    end
  end

  def destroy
    @post.destroy
    redirect_to admin_posts_path
    flash[:info] = "L'article a été supprimé"
  end

  private

  def get_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :avatar, :status)
  end

  def user_params
    params.require(:post).permit(:user_id)
  end

end
