class AddRecommendedFoodsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :rec_beta_carotene, :integer
    add_column :users, :rec_caffeine, :integer
    add_column :users, :rec_calcium, :integer
    add_column :users, :rec_carbohydrate, :integer
    add_column :users, :rec_cholesterol, :integer
    add_column :users, :rec_calories, :integer
    add_column :users, :rec_fat, :integer
    add_column :users, :rec_fiber, :integer
    add_column :users, :rec_folic_acid, :integer
    add_column :users, :rec_iron, :integer
    add_column :users, :rec_niacin, :integer
    add_column :users, :rec_potassium, :integer
    add_column :users, :rec_protein, :integer
    add_column :users, :rec_riboflavin, :integer
    add_column :users, :rec_sodium, :integer
    add_column :users, :rec_sugars, :integer
    add_column :users, :rec_thiamin, :integer
    add_column :users, :rec_vitamin_a, :integer
    add_column :users, :rec_vitamin_b12, :integer
    add_column :users, :rec_vitamin_c, :integer
    add_column :users, :rec_vitamin_d, :integer
    add_column :users, :rec_vitamin_e, :integer
    add_column :users, :rec_vitamin_k, :integer
    add_column :users, :rec_zinc, :integer
  end
end
