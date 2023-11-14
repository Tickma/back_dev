class UsersController < ApplicationController
  def show
    @users = User.all
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
      params.permit(:name, :email, :password, :birthday, :gender, :prefecture_id_id, :job, :icon_image)
    end
end
