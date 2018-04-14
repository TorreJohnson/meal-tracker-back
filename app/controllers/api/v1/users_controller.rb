class Api::V1::UsersController < ApplicationController
  def create
    @user = User.new(name: params[:name], username: params[:username], password: params[:password])
    if @user.save
      jwt = issue_token({user_id: @user.id})
      render json: {"user": @user, "jwt": jwt}
    else
      render json: {errors: @user.errors.full_messages}
    end
  end

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find_by(id: params[:id])
    render json: @user
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(user_params)
    if @user.save
      render json: @user
    else
      render json: {errors: @user.errors.full_messages}
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    if @user.destroy
      render "User has been destroyed"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :password, :age, :weight, :bmi, :address, :latitude, :longitude, :goal, :nutritionist_id)
  end

end
