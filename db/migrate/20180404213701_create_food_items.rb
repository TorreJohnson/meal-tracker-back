class CreateFoodItems < ActiveRecord::Migration[5.1]
  def change
    create_table :food_items do |t|
      t.integer :user_id
      t.string :meal_type
      t.string :name
      t.string :upc
      t.string :measurement
      t.integer :quantity
      t.integer :"321"
      t.integer :"262"
      t.integer :"301"
      t.integer :"205"
      t.integer :"601"
      t.integer :"208"
      t.integer :"204"
      t.integer :"291"
      t.integer :"431"
      t.integer :"303"
      t.integer :"406"
      t.integer :"306"
      t.integer :"203"
      t.integer :"405"
      t.integer :"307"
      t.integer :"269"
      t.integer :"404"
      t.integer :"320"
      t.integer :"578"
      t.integer :"401"
      t.integer :"324"
      t.integer :"323"
      t.integer :"430"
      t.integer :"309"

      t.timestamps
    end
  end
end
