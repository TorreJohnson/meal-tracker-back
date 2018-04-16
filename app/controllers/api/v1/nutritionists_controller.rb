class Api::V1::NutritionistsController < ApplicationController

  def create
    @nutritionist = Nutritionist.new(nutritionist_params)
    @nutritionist.password = params[:password]
    if @nutritionist.save
      jwt = issue_token({nutritionist_id: @nutritionist.id})
      render json: {user: @nutritionist, jwt: jwt}
    else
      render json: {errors: @nutritionist.errors.full_messages}
    end
  end

  def users
    if current_use
      render json: current_use.users
    else
      render json: {errors: current_use.users.errors.full_messages}
    end
  end

  def show
    @nutritionist = Nutritionist.find_by(id: params[:id])
    if @nutritionist
      render json: @nutritionist
    else
      render json: {errors: @nutritionist.errors.full_messages}
    end
  end

  def index
    @nutritionists = Nutritionist.all
    render json: @nutritionists
  end

  def update
    if current_use.update(nutritionist_params)
      render json: current_use
    end
  end

  def destroy
    if current_use.destroy
      render json: {alert: "User has been destroyed"}
    end
  end

  private

  def nutritionist_params
    params.require(:nutritionist).permit(:name, :email, :password, :company_name, :office_address, :office_latitude, :office_longitude, :accepts_new_patients, :biography, :profile_photo)
  end
end
