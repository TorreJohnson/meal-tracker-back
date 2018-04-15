class Api::V1::UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    @user.password = params[:password]
    if @user.save
      jwt = issue_token({user_id: @user.id})
      render json: {user: @user, jwt: jwt}
    else
      render json: {errors: @user.errors.full_messages}
    end
  end

  def show
    render json: current_use
  end

  def update
    current_use.update(user_params)
    if current_use.save
      render json: current_use
    else
      render json: {errors: current_use.errors.full_messages}
    end
  end

  def destroy
    if current_use.destroy
      render json: {alert: "User has been destroyed"}
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :password, :age, :weight, :bmi, :address, :latitude, :longitude, :goal, :nutritionist_id, :profile_photo, :height, :birthday)
  end

end
