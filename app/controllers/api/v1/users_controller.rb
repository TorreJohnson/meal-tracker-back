class Api::V1::UsersController < ApplicationController
  def create
    @user = User.new()
    if @user.save
      render json: @user
    else
      render json: {"Uh": "oh"}
    end
  end

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.findBy(id: params[:id])
    render json: @user
  end

  def update
    @user = User.findBy(id: params[:id])
    @user.update()
    if @user.save
      render json: @user
    else
      render json: {"Uh": "oh"}
    end
  end

  def destroy
    @user = User.findBy(id: params[:id])
    User.destroy(@user.id)
    # render json: {@user.id: "destroyed"}
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :password, :age, :weight, :bmi, :address, :latitude, :longitude, :goal, :nutritionist_id)
  end

end
