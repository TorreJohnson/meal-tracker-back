class Api::V1::AuthController < ApplicationController

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      jwt = issue_token({user_id: @user.id})
      render json: {user: @user, jwt: jwt}
    else
      render json: {error: "Invalid Username and/or Password"}
    end
  end

  def show
    if current_use
      render json: current_use
    else
      render json: {error: "Invalid User"}
    end
  end

end
