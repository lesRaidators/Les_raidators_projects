class Admin::UsersController < Admin::BaseController
  before_action :get_user, only: [:show, :destroy]

  def index
    @users = User.all.order('created_at DESC')
  end

  def show
  end

  def destroy
    @user.destroy
    redirect_to admin_users_path
    flash[:warning] = "L'utilisateur a été supprimé"
  end

  private

  def get_user
    @user = User.find(params[:id])
  end

end
