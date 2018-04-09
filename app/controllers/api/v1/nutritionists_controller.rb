class Api::V1::NutritionistsController < ApplicationController

  def create
    @nutritionist = Nutritionist.new(nutritionist_params)
    if @nutritionist.save
      render json: @nutritionist
    end
  end

  def index
    @nutritionists = Nutritionist.all
    render json: @nutritionists
  end

  def show
    @nutritionist = Nutritionist.find_by(id: params[:id])
    render json: @nutritionist
  end

  def update
    @nutritionist = Nutritionist.find_by(id: params[:id])
    if @nutritionist.update(nutritionist_params)
      render json: @nutritionist
    end
  end

  def destroy
    @nutritionist = Nutritionist.find_by(id: params[:id])
    if @nutritionist.destroy
      render json: {alert: "User has been destroyed"}
    end
  end

  private

  def nutritionist_params
    params.require(:nutritionist).permit(:name, :email, :password, :office_address, :office_latitude, :office_longitude, :accepts_new_patients, :biography)
  end
end
