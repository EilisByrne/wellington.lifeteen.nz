class UsersController < ApplicationController
  before_action :authenticate_user!, except: :show_avatar

  def index
    @users_by_role = User.users_by_role
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(create_user_params)

    if @user.save
      redirect_to users_path
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      redirect_to users_path
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy

    redirect_to users_path
  end

  def show_avatar
    @user = User.find(params[:id])
    send_data @user.avatar.file_contents(:original), :type => @user.avatar_content_type
  end

  private

  def user_params
    params.require(:user).permit(:name, :avatar, :role_id, :description)
  end

  def create_user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :avatar, :role_id, :description)
  end
end
