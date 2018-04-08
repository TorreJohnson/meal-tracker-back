class Api::V1::AuthController < ApplicationController

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      jwt = issue_token({user_id: @user.id})
      byebug
      render json: {user: @user, jwt: jwt}
    else
      render json: {error: "Invalid Username and/or Password"}
    end
  end

  def show
    if current_user
      render json: current_user
    else
      render json: {error: "Invalid User"}
    end
  end

end
