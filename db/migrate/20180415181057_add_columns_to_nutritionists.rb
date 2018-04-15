class AddColumnsToNutritionists < ActiveRecord::Migration[5.1]
  def change
    add_column :nutritionists, :company_name, :string
    add_column :nutritionists, :profile_photo, :string
  end
end
