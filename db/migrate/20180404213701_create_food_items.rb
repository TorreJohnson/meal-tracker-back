class CreateFoodItems < ActiveRecord::Migration[5.1]
  def change
    create_table :food_items do |t|
      t.integer :user_id
      t.string :meal_type
      t.datetime :date
      t.string :name
      t.string :upc
      t.string :measurement
      t.integer :quantity
      t.integer :"beta_carotene"
      t.integer :"caffeine"
      t.integer :"calcium"
      t.integer :"carbohydrate"
      t.integer :"cholesterol"
      t.integer :"calories"
      t.integer :"fat"
      t.integer :"fiber"
      t.integer :"folic_acid"
      t.integer :"iron"
      t.integer :"niacin"
      t.integer :"potassium"
      t.integer :"protein"
      t.integer :"riboflavin"
      t.integer :"sodium"
      t.integer :"sugars"
      t.integer :"thiamin"
      t.integer :"vitamin_a"
      t.integer :"vitamin_b12"
      t.integer :"vitamin_c"
      t.integer :"vitamin_d"
      t.integer :"vitamin_e"
      t.integer :"vitamin_k"
      t.integer :"zinc"

      t.timestamps
    end
  end
end
