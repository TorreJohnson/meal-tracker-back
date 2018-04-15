class Api::V1::FoodItemsController < ApplicationController

  def create
    @food_item = FoodItem.new(food_item_params)
    if @food_item.save
      render json: @food_item
    else
      render json: {errors: @food_item.errors.full_messages}
    end
  end

  private

  def food_item_params
    params.require(:food_item).permit(:user_id, :meal_type, :date, :name, :upc, :measurement, :quantity, :beta_carotene, :caffeine, :calcium, :carbohydrate, :cholesterol, :calories, :fat, :fiber, :folic_acid, :iron, :niacin, :potassium, :protein, :riboflavin, :sodium, :sugars, :thiamin, :vitamin_a, :vitamin_b12, :vitamin_c, :vitamin_d, :vitamin_e, :vitamin_k, :zinc, :image, :high_res, :serving, :serving_unit, :serving_in_grams, :brand, :ndb_no)
  end

end
