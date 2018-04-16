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
    @user = User.find_by(id: params[:id])
    @user.update(user_params)
    if @user.save
      render json: @user
    else
      render json: {errors: @user.errors.full_messages}
    end
  end

  def destroy
    if current_use.destroy
      render json: {alert: "User has been destroyed"}
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :password, :age, :weight, :bmi, :address, :latitude, :longitude, :goal, :nutritionist_id, :profile_photo, :height, :birthday, :rec_beta_carotene, :rec_caffeine, :rec_calcium, :rec_carbohydrate, :rec_cholesterol, :rec_calories, :rec_fat, :rec_fiber, :rec_folic_acid, :rec_iron, :rec_niacin, :rec_potassium, :rec_protein, :rec_riboflavin, :rec_sodium, :rec_sugars, :rec_thiamin, :rec_vitamin_a, :rec_vitamin_b12, :rec_vitamin_c, :rec_vitamin_d, :rec_vitamin_e, :rec_vitamin_k, :rec_zinc)
  end

end
