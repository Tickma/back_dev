class UsersController < ApplicationController
  def index
    @users = User.all
    render json: {status: 'status', data: @users}
  end

  def show
    @users = User.find(params[:id])
    render json: {status: 'success', data: @users}
  end

  def addUser
    @user = User.new(user_params)
    if @user.save
      render json: {status: 'success', data: @user}
    else
      render json: {status: 'error', data: @user.errors}
    end
  end

  def deleteUser
    user = User.find(params[:id])
    todo.destroy
  end

  private
    def user_params
      params.permit(:name, :email, :password, :birthday, :gender, :prefecture_id, :job, :icon_image)
    end
end

