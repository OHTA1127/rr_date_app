class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = Post.all
  end

  def index
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private
  def user_params
    params.require(:user).permit(:name, :user_image)
  end

end
