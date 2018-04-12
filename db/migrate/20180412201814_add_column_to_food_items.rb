class AddColumnToFoodItems < ActiveRecord::Migration[5.1]
  def change
    add_column :food_items, :image, :string
    add_column :food_items, :high_res, :string
    add_column :food_items, :serving, :integer
    add_column :food_items, :serving_unit, :string
    add_column :food_items, :serving_in_grams, :integer
    add_column :food_items, :brand, :string
    add_column :food_items, :ndb_no, :integer
  end
end
