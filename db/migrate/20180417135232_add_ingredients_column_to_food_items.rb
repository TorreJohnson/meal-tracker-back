class AddIngredientsColumnToFoodItems < ActiveRecord::Migration[5.1]
  def change
    add_column :food_items, :ingredients, :string
  end
end
