class Api::V1::AuthController < ApplicationController

  def create
    @user = User.find_by(username: params[:username])
    @nutritionist = Nutritionist.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      jwt = issue_token({user_id: @user.id})
      render json: {user: @user, food_items: @user.food_items, messages: @user.messages, jwt: jwt}
    elsif @nutritionist && @nutritionist.authenticate(params[:password])
      jwt = issue_token({nutritionist_id: @nutritionist.id})
      render json: {user: @nutritionist, messages: @nutritionist.messages, jwt: jwt}
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
